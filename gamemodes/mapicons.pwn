/*
 * Default Map Icons
 * original scriptor: wups
*/

// comment these if you do not want to use them.
#define mapIcons_PAY_SPRAY
#define mapIcons_BARBER
#define mapIcons_PIZZA
#define mapIcons_BURGER
#define mapIcons_CLUCKIN
#define mapIcons_TATTOO
#define mapIcons_CLOTHES
#define mapIcons_AMMUNATION

enum Chars
{
        ID,
        Float:X,
        Float:Y,
        Float:Z
}

static const Coords[][Chars] = {
 
#if defined mapIcons_PAY_SPRAY
        {63,2067.4,-1831.2,13.5},
        {63,488.0,-1734.0,34.4},
        {63,720.016,-454.625,15.328},
        {63,-1420.547,2583.945,58.031},
        {63,1966.532,2162.65,10.995},
        {63,-2425.46,1020.83,49.39},
        {63,1021.8,-1018.7,30.9},
        {63,-1908.9,292.3,40.0},
        {63,-103.6,1112.4,18.7},
#endif
 
#if defined mapIcons_BARBER
        {7,822.6,-1590.3,13.5},
        {7,-2570.1,245.4,10.3},
        {7,2726.6,-2026.4,17.5},
        {7,2080.3, 2119.0, 10.8}, 
        {7, 675.7, -496.6, 16.8}, 
#endif
 
#if defined mapIcons_PIZZA
        {29, -1805.7, 943.2, 24.8}, 
        {29, 2750.9, 2470.9, 11.0}, 
        {29, 2351.8, 2529.0, 10.8}, 
        {29, 2635.5, 1847.4, 11.0}, 
        {29, 2083.4, 2221.0, 11.0}, 
        {29, -1719.1, 1359.4, 8.6}, 
        {29, 2330.2, 75.2, 31.0}, 
        {29, 203.2, -200.4, 6.5}, 
#endif
 
#if defined mapIcons_BURGER
        {10, 812.9, -1616.1, 13.6}, 
        {10, 1199.1, -924.0, 43.3}, 
        {10, 2362.2, 2069.9, 10.8}, 
        {10, 2469.5, 2033.8, 10.8}, 
        {10, 2172.9, 2795.7, 10.8}, 
        {10, 1875.3, 2072.0, 10.8}, 
        {10, 1161.5, 2072.0, 10.8}, 
        {10, -2356.0, 1009.0, 49.0}, 
        {10, -1913.3, 826.2, 36.9}, 
        {10, -2335.6, -165.6, 39.5}, 
#endif
 
#if defined mapIcons_CLUCKIN
        {14, 2397.8, -1895.6, 13.7}, 
        {14, 2421.6, -1509.6, 24.1}, 
        {14, -2671.6, 257.4, 4.6}, 
        {14, 2392.4, 2046.5, 10.8}, 
        {14, 2844.5, 2401.1, 11.0}, 
        {14, 2635.5, 1674.3, 11.0}, 
        {14, 2105.7, 2228.7, 11.0}, 
        {14, -2154.0, -2461.2, 30.8}, 
        {14, -1816.2, 620.8, 37.5}, 
        {14, -1216.0, 1831.4, 45.3}, 
        {14, 172.73, 1176.76, 13.7}, 
        {14, 932.0, -1353.0, 14.0}, 
#endif
 
#if defined mapIcons_TATTOO
        {39, 1971.7, -2036.6, 13.5}, 
        {39, 2071.6, -1779.9, 13.5}, 
        {39, 2094.6, 2119.0, 10.8}, 
        {39, -2490.5, -40.1, 39.3}, 
#endif
 
#if defined mapIcons_CLOTHES
        {45, -2376.4, 909.2, 45.4}, 
        {45, 1654.0, 1733.4, 11.0}, 
        {45, 2105.7, 2257.4, 11.0}, 
        {45, -2371.1, 910.2, 47.2}, 
        {45, 501.7, -1358.5, 16.4}, 
        {45, 2818.6, 2401.5, 11.0}, 
        {45, 2112.8, -1214.7, 23.9}, 
        {45, 2772.0, 2447.6, 11.0}, 
        {45, -2489.0, -26.9, 32.6}, 
#endif
 
#if defined TUNE
        {27, 2644.252, -2028.246, 12.5547}, 
        {27, 1043.4, -1025.3, 34.4}, 
#endif
 
#if defined mapIcons_AMMUNATION
        {6, 1372.9, -1278.8, 12.5}, 
        {6, -2626.6, 209.4, 4.9}, 
        {6, 2535.9, 2083.5, 10.8}, 
        {6, 2156.5, 943.2, 10.8}, 
        {6, 779.7, 1874.3, 4.9}, 
        {6, -2092.7, -2463.8, 30.6}, 
        {6, 240.0, -178.2, 2.0}, 
        {6, -1509.4, 2611.8, 58.5}, 
        {6, -315.67, 829.87, 13.43}, 
        {6, 2332.9, 63.6, 31.0}, 
#endif
 
        {18, 2447.364, -1974.496, 12.5469}
 
};

stock mapIcons_OnPlayerConnect(playerid)
{
        for(new i; i<sizeof(Coords); i++){
		if(Coords[i][Y] > -800.0 && Coords[i][X] < -1080.0 && Coords[i][Y] < 1600.0 && Coords[i][X] > -2950.0){
			//SetPlayerMapIcon(playerid, i, Coords[i][X], Coords[i][Y], Coords[i][Z], Coords[i][ID], 0, MAPICON_GLOBAL);
		}
	}
        return 1;
}
