import { Grid, Typography, Button } from "@mui/material";

function App() {
  return (
    <Grid container direction="column">
      <Grid item>
        <Typography variant="h4" component="h1">
          1% Better
        </Typography>
      </Grid>
      <Grid item>
        <Button variant="contained" color="primary">
          Create Habit
        </Button>
      </Grid>
    </Grid>
  );
}

export default App;
