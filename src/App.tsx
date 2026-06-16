import { useState } from "react";

function App() {
  const [name, setName] = useState("");
  const [message, setMessage] = useState("");

  const handleSubmit = () => {
    setMessage(`Hello ${name}`);
  };

  return (
    <div>
      <h1>Tauri Robot Demo</h1>

      <input
        data-testid="name-input"
        placeholder="Enter name"
        value={name}
        onChange={(e) => {
          setName(e.target.value);

          // Clear previous greeting when input is emptied
          if (e.target.value.trim() === "") {
            setMessage("");
          }
        }}
      />

      <button
        data-testid="submit-btn"
        disabled={name.trim() === ""}
        onClick={handleSubmit}
      >
        Submit
      </button>

      <p data-testid="greeting-msg">{message}</p>
    </div>
  );
}

export default App;