# crocodiles.pkg
## An R package for processing and visualizing data obtained from multisensor animal-borne satellite trackers

This package is intended for users of custom-built multi-sensor satellite trackers with the purpose of visualizing and analyzing raw data of measurements collected from sensors on-board the device: GPS, Arduino IMU, and more. 

#Installing Package


Of particular importance is the tri-axial accelerometer included in the IMU sensor. This sensor measures the change in acceleration, or motion, of an animal along 3 axes (X, Y, and Z). From the raw acceleration measurements, new metrics can be derived that describe the fine-scale patterns of motion exhibited by an animal. 

When combined with and assigned to behavioral observations, these data can be used by machine learning algorithms to create, train, and validate behavioral classification models capable of identifying behaviors of free-ranging animals without direct observation. This is especially useful in the case of large cryptic carnivores, whose movements and behaviors are hard to observe directly.

![Tri-axial Acceleration](https://github.com/mcgrealmaggie/crocodiles.pkg/blob/main/Screen%20Shot%202023-11-28%20at%2011.32.51%20AM.png?raw=true)

##Sensor Data
The data used in the tutorial for this package contains 

# Study scope
##Individual Variation in Movement Behaviors and Space Use: Implications for Human-Predator Relationships

Individual variation in behavior is a crucial aspect of a population's dynamics, as members of the same population display unique ways of moving, behaving, and utilizing their environment. The convergence of movement ecology and tracking technology has revolutionized wildlife research, enabling quantification of fine-scale movements and behaviors of free-ranging individuals. The limited application of these tools in crocodylian research, despite urgent calls for conflict management, stems from various challenges involving device attachment, data retrieval, and affordability of devices with specifications for large-bodied, semi-aquatic predators. This study pioneers the use of custom-built multisensor satellite trackers to address the pressing concern of American crocodiles (Crocodylus acutus) near Palo Verde National Park, Costa Rica, where the growing population's skewed male sex ratio—attributed to a synthetic androgen used by tilapia farms neighboring the park—poses both ecological and human-wildlife conflict challenges. Machine learning algorithms will be applied to fine-scale movement metrics and observed behaviors of American alligators in captivity to train, test, and validate a behavioral classification model for remotely identifying behaviors of free-ranging crocodylians. Trackers will be deployed on crocodiles captured and released within the park (n = 10) or relocated from potential conflict areas (n = 10) to quantify within individual consistency and among individual variation in behavioral expression across context and time. Data will be used to assess behavioral type, plasticity, and predictability at the individual level. This endeavor not only advances our understanding of how anthropogenic forces influence crocodile movement and behavior but also highlights the pivotal role of movement ecology in unraveling complex human-wildlife challenges.
