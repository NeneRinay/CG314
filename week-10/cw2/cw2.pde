//JSON example

JSONArray places;

void setup() {
 size(480,120);
 places = loadJSONArray("googleMAP-example.json");
 
 
 String homeName = places.getString("homeTeam");
 println(homeName);
 
 
}

void draw(){

}

//email shaun if i'm completely lost