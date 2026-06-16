import { useState } from "react";

function App() {
  const [name, setName] = useState("");
  const [message, setMessage] = useState("");

  return (
    <div>
      <h1>Tauri Robot Demo</h1>

      <input
        data-testid="name-input"
        placeholder="Enter name"
        value={name}
        onChange={(e) => setName(e.target.value)}
      />

      <button
        data-testid="submit-btn"
        onClick={() => setMessage(`Hello ${name}`)}
      >
        Submit
      </button>

      <p data-testid="greeting-msg">{message}</p>
    </div>
  );
}

export default App;