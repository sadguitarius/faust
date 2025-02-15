ID_0 = float(fSamplingFreq);
ID_1 = max(1.0f, ID_0);
ID_2 = min(192000.0f, ID_1);
ID_3 = 1000.0f/ID_2;
ID_4 = hslider("grainsize [unit:msec]",100.0f,1.0f,1000.0f,1.0f);
ID_5 = ID_3/ID_4;
ID_6 = W1;
ID_7 = proj0(ID_6);
ID_8 = ID_7';
ID_9 = ID_5+ID_8;
ID_10 = floor(ID_9);
ID_11 = ID_8-ID_10;
ID_12 = ID_5+ID_11;
ID_13 = letrec(W1 = (ID_12));
ID_14 = proj0(ID_13);
ID_15 = ID_14@0;
ID_16 = (ID_15>0.0001f);
ID_17 = (ID_8<=0.0001f);
ID_18 = ID_16*ID_17;
ID_19 = W5;
ID_20 = proj0(ID_19);
ID_21 = ID_20';
ID_22 = W2;
ID_23 = proj0(ID_22);
ID_24 = ID_23';
ID_25 = 1103515245*ID_24;
ID_26 = ID_25+12345;
ID_27 = letrec(W2 = (ID_26));
ID_28 = proj0(ID_27);
ID_29 = ID_28@0;
ID_30 = float(ID_29);
ID_31 = 4.6566128752457969e-10f*ID_30;
ID_32 = (ID_31+1.0f);
ID_33 = 0.5f*ID_32;
ID_34 = hslider("rarefaction",0.20000000000000001f,0.0f,1.0f,0.01f);
ID_35 = ID_33>ID_34;
ID_36 = select2(ID_18,ID_21,ID_35);
ID_37 = letrec(W5 = (ID_36));
ID_38 = proj0(ID_37);
ID_39 = ID_38@0;
ID_40 = float(ID_39);
ID_41 = W0;
ID_42 = proj0(ID_41);
ID_43 = ID_42';
ID_44 = 0.00050000000000000001f*ID_2;
ID_45 = hslider("delaymax",1000.0f,10.0f,10000.0f,1.0f);
ID_46 = ID_44*ID_45;
ID_47 = ID_46*ID_32;
ID_48 = select2(ID_18,ID_43,ID_47);
ID_49 = letrec(W0 = (ID_48));
ID_50 = proj0(ID_49);
ID_51 = ID_50@0;
ID_52 = int(ID_51);
ID_53 = max(0, ID_52);
ID_54 = min(524289, ID_53);
ID_55 = (IN[0]@ID_54);
ID_56 = floor(ID_51);
ID_57 = 1.0f-ID_51;
ID_58 = (ID_56+ID_57);
ID_59 = ID_55*ID_58;
ID_60 = (ID_51-ID_56);
ID_61 = ID_52+1;
ID_62 = max(0, ID_61);
ID_63 = min(524289, ID_62);
ID_64 = (IN[0]@ID_63);
ID_65 = ID_60*ID_64;
ID_66 = (ID_59+ID_65);
ID_67 = ID_40*ID_66;
ID_68 = sin(9.5873799242852573e-05f*float(proj0(letrec(W3 = (proj0(W3)'+1)))@0+-1));
ID_69 = TABLE(65536,ID_68);
ID_70 = W4;
ID_71 = proj0(ID_70);
ID_72 = ID_71';
ID_73 = floor(ID_72);
ID_74 = ID_72-ID_73;
ID_75 = letrec(W4 = (ID_74));
ID_76 = proj0(ID_75);
ID_77 = (ID_76@0);
ID_78 = 65536.0f*ID_77;
ID_79 = int(ID_78);
ID_80 = read(ID_69,ID_79);
ID_81 = 3.1415926535897931f*ID_15;
ID_82 = cos(ID_81);
ID_83 = ID_80*ID_82;
ID_84 = cos(9.5873799242852573e-05f*float(proj0(letrec(W3 = (proj0(W3)'+1)))@0+-1));
ID_85 = TABLE(65536,ID_84);
ID_86 = read(ID_85,ID_79);
ID_87 = sin(ID_81);
ID_88 = ID_86*ID_87;
ID_89 = (ID_83+ID_88);
ID_90 = ID_67*ID_89;
SIG = (ID_90);
