const btn = document.getElementById('checkStatusBtn');
const resultBox = document.getElementById('statusResult');

btn.addEventListener('click', async () => {
  resultBox.textContent = 'Checking server status...';

  try {
    const response = await fetch('/api/status');
    const data = await response.json();

    resultBox.textContent = JSON.stringify(data, null, 2);
  } catch (error) {
    resultBox.textContent = 'Error: Could not reach server. ' + error.message;
  }
});