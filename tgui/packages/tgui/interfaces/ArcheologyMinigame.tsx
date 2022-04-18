import { useBackend, useLocalState } from '../backend';
import {
  Box, Button,
} from '../components';
import { Window } from '../layouts';
import { Component, createRef } from "inferno";
import { resolveAsset } from '../assets';

type TileInfo = {
  icon: string,
  rotation: number
}

type MinigameData = {
  grid: TileInfo[][],
  integrity: number,
  background_icon_class: string
}

type AnimateProps<T> = {
  className: string,
  data: T,
  when: (old: T, current: T) => boolean
}

class ApplyClassOnPropChange<DataType> extends Component<AnimateProps<DataType>> {
  ref = createRef<HTMLDivElement>();

  componentDidUpdate(prevProps: AnimateProps<DataType>, _prevState) {
    if (this.props.when(prevProps.data, this.props.data)) {
      this.ref.current?.classList.remove(this.props.className);
      this.ref.current?.offsetHeight;
      this.ref.current?.classList.add(this.props.className);
    }
  }

  render() {
    return (
      <div ref={this.ref} tabIndex={-1}>
        {this.props.children}
      </div>
    );
  }
}



export const ArcheologyMinigame = (props, context) => {
  const { act, data } = useBackend<MinigameData>(context);
  const transpose = (m:TileInfo[][]) => m[0].map((_, i) => m.map(r => r[i]));
  const grid = transpose(data.grid); // should switch to non-map for really
  const [pickType, setPickType] = useLocalState(
    context,
    'chosenPick',
    'pickaxe'
  );
  // Todo: Add borders fluff depending on x,y
  const calculateTileClass = (
    info: TileInfo,
    x: number,
    y: number) => {
    let result = info.icon;
    // Rotation
    switch (info.rotation) {
      case 90:
        return `${result} Archeology__Rotated90`;
      case 180:
        return `${result} Archeology__Rotated180`;
      case 270:
        return `${result} Archeology__Rotated270`;
      default:
        return result;
    }
  };

  const calculateCursorStyle = (tool) => {
    switch (tool) {
      case 'hammer':
        return { cursor: `url("${resolveAsset('cursor_hammer.cur')}"), auto` };
      case 'pickaxe':
        return { cursor: `not-allowed` };
    }
    return { cursor: 'wait' };
  };

  return (
    <Window width={400} height={450}>
      <Window.Content>
        <Box>
          Integrity: {data.integrity}
          <Button
            selected={pickType==='pickaxe'}
            onClick={() => setPickType('pickaxe')}
            content="Pickaxe"
          />
          <Button
            selected={pickType==='hammer'}
            onClick={() => setPickType('hammer')}
            content="Hammer"
          />
        </Box>
        <ApplyClassOnPropChange data={data.integrity} className="Archeo__Shake" when={(old, current) => old !== current}>
          <Box className="Archeo__Table">
            {grid.map((row, index_y) => (
              <Box className="Archeo__Row" key={index_y}>
                {row.map((value, index_x) => (
                  <Box
                    key={index_x}
                    className={"Archeo__Cell "+data.background_icon_class}>
                    <Box
                      className={calculateTileClass(value, index_x, index_y)}
                      onClick={() => act("excavate", { x: index_x+1, y: index_y+1, pickType: pickType })}
                      style={calculateCursorStyle(pickType)}
                    />
                  </Box>))}
              </Box>))}
          </Box>
        </ApplyClassOnPropChange>
      </Window.Content>
    </Window>
  );
};
