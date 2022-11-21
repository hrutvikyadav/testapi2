import React from "react";

function CyclerList(props) {
  return (
    <div>``
      <h3>Cycler's List</h3>
      {
        props.list.map((cycler) => {
          return <div key={cycler.id}>
            <h2>{cycler.name}</h2>
          </div>
        })
      }
    </div>
  );
}

export default CyclerList;
