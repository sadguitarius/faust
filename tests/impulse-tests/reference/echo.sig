ID_0 = hslider("feedback/echo 1000/echo-simple",98.400000000000006f,0.0f,100.0f,0.10000000000000001f);
ID_1 = 0.01f*ID_0;
ID_2 = W0;
ID_3 = proj0(ID_2);
ID_4 = float(fSamplingFreq);
ID_5 = max(1.0f, ID_4);
ID_6 = min(192000.0f, ID_5);
ID_7 = 0.001f*ID_6;
ID_8 = hslider("millisecond/echo 1000/echo-simple",8.0999999999999996f,0.0f,1000.0f,0.10000000000000001f);
ID_9 = ID_7*ID_8;
ID_10 = int(ID_9);
ID_11 = ID_10+-1;
ID_12 = (ID_11&65535);
ID_13 = (ID_12+1);
ID_14 = (ID_3@ID_13);
ID_15 = ID_1*ID_14;
ID_16 = IN[0]+ID_15;
ID_17 = letrec(W0 = (ID_16));
ID_18 = proj0(ID_17);
ID_19 = ID_18@0;
SIG = (ID_19);
