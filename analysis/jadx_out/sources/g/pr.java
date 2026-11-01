package g;

/* loaded from: classes.dex */
public final class pr {

    /* renamed from: c, reason: collision with root package name */
    public final short f19825c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f19826d;

    /* renamed from: e, reason: collision with root package name */
    public final byte f19827e;

    /* renamed from: f, reason: collision with root package name */
    public final String f19828f;

    /* renamed from: g, reason: collision with root package name */
    public final byte f19829g;
    public final byte h;
    public final byte i;
    public final short j;
    public final byte k;
    public final byte l;
    public final byte m;
    public final short n;

    /* renamed from: b, reason: collision with root package name */
    public static final dba f19824b = dsr.k(pr.class);

    /* renamed from: a, reason: collision with root package name */
    public static int f19823a = 0;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x005d, code lost:
    
        if (r6 > 3) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x028d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public pr(short s, short s2, char[] cArr, char[] cArr2, byte b2, byte b3, int i, byte b4, byte b5, byte b6, byte b7, short s3, short s4, short s5, byte b8, byte b9, short s6, short s7, short s8, char[] cArr3, char[] cArr4, byte b10, byte b11, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        String sb;
        byte b12;
        int i3;
        short s9;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        byte b13;
        int i9;
        int i10;
        byte b14;
        int i11;
        byte b15;
        int i12;
        byte b16;
        short s10;
        short s11;
        short s12;
        byte b17 = b2;
        byte b18 = b3;
        byte b19 = b4;
        byte b20 = b5;
        char[] cArr5 = cArr3;
        char[] cArr6 = cArr4;
        dba dbaVar = f19824b;
        if (b17 < 0 || b17 > 3) {
            dbaVar.p(Byte.valueOf(b17), "Invalid orientation value: {}");
            b17 = 0;
            z = true;
        } else {
            z = false;
        }
        if (b18 < 0 || b18 > 3) {
            dbaVar.p(Byte.valueOf(b18), "Invalid touchscreen value: {}");
            b18 = 0;
            z = true;
        }
        boolean z4 = z;
        int i13 = i;
        if (i13 < -1) {
            dbaVar.p(Integer.valueOf(i13), "Invalid density value: {}");
            i13 = 0;
            z2 = true;
        } else {
            z2 = z4;
        }
        boolean z5 = b19 >= 0 ? z2 : true;
        dbaVar.p(Byte.valueOf(b19), "Invalid keyboard value: {}");
        b19 = 0;
        if (b20 < 0 || b20 > 4) {
            dbaVar.p(Byte.valueOf(b20), "Invalid navigation value: {}");
            b20 = 0;
            z3 = true;
        } else {
            z3 = z5;
        }
        cArr5 = (cArr5 == null || cArr5.length == 0 || cArr5[0] == 0) ? null : cArr5;
        cArr6 = (cArr6 == null || cArr6.length == 0 || cArr6[0] == 0) ? null : cArr6;
        this.h = b17;
        this.k = b18;
        this.m = b19;
        this.f19827e = b20;
        this.f19829g = b6;
        this.i = b7;
        this.n = s3;
        this.f19825c = s4;
        this.j = s5;
        this.l = b10;
        this.f19826d = z3;
        StringBuilder sb2 = new StringBuilder();
        if (s != 0) {
            sb2.append("-mcc");
            sb2.append(String.format("%03d", Short.valueOf(s)));
            if (s2 == -1) {
                sb2.append("-mnc00");
            } else if (s2 != 0) {
                sb2.append("-mnc");
                if (i2 > 32) {
                    sb2.append((int) s2);
                } else if (s2 <= 0 || s2 >= 10) {
                    sb2.append(String.format("%03d", Short.valueOf(s2)));
                } else {
                    sb2.append(String.format(jp.ZERO_LEADING_NUMBER_FORMAT, Short.valueOf(s2)));
                }
            }
        } else if (s2 != 0) {
            sb2.append("-mnc");
            sb2.append((int) s2);
        }
        StringBuilder sb3 = new StringBuilder();
        if (cArr6 == null && cArr5 == null && !((cArr2[0] == 0 && cArr[0] == 0) || cArr2.length == 3)) {
            sb3.append('-');
            sb3.append(cArr);
            if (cArr2[0] != 0) {
                sb3.append("-r");
                sb3.append(cArr2);
            }
        } else {
            if (cArr[0] == 0 && cArr2[0] == 0) {
                sb = sb3.toString();
                sb2.append(sb);
                b12 = this.i;
                if (b12 != 1) {
                    sb2.append("-neuter");
                } else if (b12 == 2) {
                    sb2.append("-feminine");
                } else if (b12 == 3) {
                    sb2.append("-masculine");
                }
                i3 = b8 & 192;
                if (i3 != 64) {
                    sb2.append("-ldltr");
                } else if (i3 == 128) {
                    sb2.append("-ldrtl");
                }
                if (s6 != 0) {
                    sb2.append("-sw");
                    sb2.append((int) s6);
                    sb2.append("dp");
                }
                if (s7 != 0) {
                    sb2.append("-w");
                    sb2.append((int) s7);
                    sb2.append("dp");
                }
                if (s8 == 0) {
                    sb2.append("-h");
                    s9 = s8;
                    sb2.append((int) s9);
                    sb2.append("dp");
                } else {
                    s9 = s8;
                }
                i4 = b8 & 15;
                if (i4 != 1) {
                    sb2.append("-small");
                } else if (i4 == 2) {
                    sb2.append("-normal");
                } else if (i4 == 3) {
                    sb2.append("-large");
                } else if (i4 == 4) {
                    sb2.append("-xlarge");
                }
                i5 = b8 & 48;
                if (i5 != 16) {
                    sb2.append("-notlong");
                } else if (i5 == 32) {
                    sb2.append("-long");
                }
                i6 = this.l & 3;
                if (i6 != 1) {
                    sb2.append("-notround");
                } else if (i6 == 2) {
                    sb2.append("-round");
                }
                i7 = b11 & 12;
                if (i7 != 4) {
                    sb2.append("-lowdr");
                } else if (i7 == 8) {
                    sb2.append("-highdr");
                }
                i8 = b11 & 3;
                if (i8 != 1) {
                    sb2.append("-nowidecg");
                } else if (i8 == 2) {
                    sb2.append("-widecg");
                }
                b13 = this.h;
                if (b13 != 1) {
                    sb2.append("-port");
                } else if (b13 == 2) {
                    sb2.append("-land");
                } else if (b13 == 3) {
                    sb2.append("-square");
                }
                i9 = b9 & 15;
                switch (i9) {
                    case 2:
                        sb2.append("-desk");
                        break;
                    case 3:
                        sb2.append("-car");
                        break;
                    case 4:
                        sb2.append("-television");
                        break;
                    case 5:
                        sb2.append("-appliance");
                        break;
                    case 6:
                        sb2.append("-watch");
                        break;
                    case 7:
                        sb2.append("-vrheadset");
                        break;
                    case 11:
                        sb2.append("-godzillaui");
                        break;
                    case 12:
                        sb2.append("-smallui");
                        break;
                    case 13:
                        sb2.append("-mediumui");
                        break;
                    case 14:
                        sb2.append("-largeui");
                        break;
                    case 15:
                        sb2.append("-hugeui");
                        break;
                }
                i10 = b9 & 48;
                if (i10 != 16) {
                    sb2.append("-notnight");
                } else if (i10 == 32) {
                    sb2.append("-night");
                }
                if (i13 != 0) {
                    if (i13 == 120) {
                        sb2.append("-ldpi");
                    } else if (i13 == 160) {
                        sb2.append("-mdpi");
                    } else if (i13 == 213) {
                        sb2.append("-tvdpi");
                    } else if (i13 == 240) {
                        sb2.append("-hdpi");
                    } else if (i13 == 320) {
                        sb2.append("-xhdpi");
                    } else if (i13 == 480) {
                        sb2.append("-xxhdpi");
                    } else if (i13 != 640) {
                        switch (i13) {
                            case 65534:
                                sb2.append("-anydpi");
                                break;
                            case 65535:
                                sb2.append("-nodpi");
                                break;
                            default:
                                sb2.append('-');
                                sb2.append(i13);
                                sb2.append("dpi");
                                break;
                        }
                    } else {
                        sb2.append("-xxxhdpi");
                    }
                }
                b14 = this.k;
                if (b14 != 1) {
                    sb2.append("-notouch");
                } else if (b14 == 2) {
                    sb2.append("-stylus");
                } else if (b14 == 3) {
                    sb2.append("-finger");
                }
                i11 = this.f19829g & 3;
                if (i11 != 1) {
                    sb2.append("-keysexposed");
                } else if (i11 == 2) {
                    sb2.append("-keyshidden");
                } else if (i11 == 3) {
                    sb2.append("-keyssoft");
                }
                b15 = this.m;
                if (b15 != 1) {
                    sb2.append("-nokeys");
                } else if (b15 == 2) {
                    sb2.append("-qwerty");
                } else if (b15 == 3) {
                    sb2.append("-12key");
                }
                i12 = this.f19829g & 12;
                if (i12 != 4) {
                    sb2.append("-navexposed");
                } else if (i12 == 8) {
                    sb2.append("-navhidden");
                }
                b16 = this.f19827e;
                if (b16 != 1) {
                    sb2.append("-nonav");
                } else if (b16 == 2) {
                    sb2.append("-dpad");
                } else if (b16 == 3) {
                    sb2.append("-trackball");
                } else if (b16 == 4) {
                    sb2.append("-wheel");
                }
                s10 = this.n;
                if (s10 != 0 && (s12 = this.f19825c) != 0) {
                    if (s10 <= s12) {
                        sb2.append(String.format("-%dx%d", Short.valueOf(s10), Short.valueOf(this.f19825c)));
                    } else {
                        sb2.append(String.format("-%dx%d", Short.valueOf(s12), Short.valueOf(this.n)));
                    }
                }
                s11 = this.j;
                if (s11 > 0) {
                    if (s11 >= ((i9 != 7 && i8 == 0 && i7 == 0) ? (this.l & 3) != 0 ? (short) 23 : i13 == 65534 ? (short) 21 : (s6 == 0 && s7 == 0 && s9 == 0) ? (b9 & 63) != 0 ? (short) 8 : ((b8 & 63) == 0 && i13 == 0) ? (short) 0 : (short) 4 : (short) 13 : (short) 26)) {
                        sb2.append("-v");
                        sb2.append((int) this.j);
                    }
                }
                if (this.f19826d) {
                    sb2.append("-ERR");
                    int i14 = f19823a;
                    f19823a = i14 + 1;
                    sb2.append(i14);
                }
                this.f19828f = sb2.toString();
            }
            sb3.append("-b+");
            if (cArr[0] != 0) {
                sb3.append(cArr);
            }
            if (cArr5 != null && cArr5.length == 4) {
                sb3.append('+');
                sb3.append(cArr5);
            }
            if ((cArr2.length == 2 || cArr2.length == 3) && cArr2[0] != 0) {
                sb3.append('+');
                sb3.append(cArr2);
            }
            if (cArr6 != null && cArr6.length >= 5) {
                sb3.append('+');
                StringBuilder sb4 = new StringBuilder();
                for (char c2 : cArr6) {
                    sb4.append(Character.toUpperCase(c2));
                }
                sb3.append(sb4.toString());
            }
        }
        sb = sb3.toString();
        sb2.append(sb);
        b12 = this.i;
        if (b12 != 1) {
        }
        i3 = b8 & 192;
        if (i3 != 64) {
        }
        if (s6 != 0) {
        }
        if (s7 != 0) {
        }
        if (s8 == 0) {
        }
        i4 = b8 & 15;
        if (i4 != 1) {
        }
        i5 = b8 & 48;
        if (i5 != 16) {
        }
        i6 = this.l & 3;
        if (i6 != 1) {
        }
        i7 = b11 & 12;
        if (i7 != 4) {
        }
        i8 = b11 & 3;
        if (i8 != 1) {
        }
        b13 = this.h;
        if (b13 != 1) {
        }
        i9 = b9 & 15;
        switch (i9) {
        }
        i10 = b9 & 48;
        if (i10 != 16) {
        }
        if (i13 != 0) {
        }
        b14 = this.k;
        if (b14 != 1) {
        }
        i11 = this.f19829g & 3;
        if (i11 != 1) {
        }
        b15 = this.m;
        if (b15 != 1) {
        }
        i12 = this.f19829g & 12;
        if (i12 != 4) {
        }
        b16 = this.f19827e;
        if (b16 != 1) {
        }
        s10 = this.n;
        if (s10 != 0) {
            if (s10 <= s12) {
            }
        }
        s11 = this.j;
        if (s11 > 0) {
        }
        if (this.f19826d) {
        }
        this.f19828f = sb2.toString();
    }

    public final boolean equals(Object obj) {
        if (obj != null && pr.class == obj.getClass()) {
            return this.f19828f.equals(((pr) obj).f19828f);
        }
        return false;
    }

    public final int hashCode() {
        return this.f19828f.hashCode() + 527;
    }

    public final String toString() {
        String str = this.f19828f;
        return !str.isEmpty() ? str : "[DEFAULT]";
    }
}
