package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.asf;
import g.aul;
import g.ayh;
import g.bli;
import g.bso;
import g.cxb;
import g.cyk;
import g.dmd;
import g.dub;
import g.egh;
import g.eol;
import g.eub;
import g.fbc;
import g.fse;
import g.gbc;
import g.gli;
import g.gxd;
import g.he;
import g.hj;
import g.tn;
import g.uo;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public final class aj implements g.ah {

    /* renamed from: c, reason: collision with root package name */
    public final int[] f3940c;
    public final i m;
    public final int n;
    public final i o;
    public final zzhai p;
    public final int[] q;
    public final boolean r;
    public final int s;
    public final Object[] t;
    public final int u;
    public final int v;
    public final boolean w;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f3939b = new int[0];

    /* renamed from: a, reason: collision with root package name */
    public static final Unsafe f3938a = gbc.j();

    public aj(int[] iArr, Object[] objArr, int i, int i2, zzhai zzhaiVar, int[] iArr2, int i3, int i4, i iVar, i iVar2) {
        this.q = iArr;
        this.t = objArr;
        this.v = i;
        this.n = i2;
        this.w = zzhaiVar instanceof zzgyx;
        boolean z = false;
        if (iVar2 != null && (zzhaiVar instanceof zzgyt)) {
            z = true;
        }
        this.r = z;
        this.f3940c = iArr2;
        this.s = i3;
        this.u = i4;
        this.m = iVar;
        this.o = iVar2;
        this.p = zzhaiVar;
    }

    public static int aa(long j, Object obj) {
        return ((Integer) gbc.v(j, obj)).intValue();
    }

    public static void ab(Object obj) {
        if (!ae(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    public static zzhbo ac(Object obj) {
        zzgyx zzgyxVar = (zzgyx) obj;
        zzhbo zzhboVar = zzgyxVar.zzt;
        if (zzhboVar != zzhbo.zzc()) {
            return zzhboVar;
        }
        zzhbo g2 = zzhbo.g();
        zzgyxVar.zzt = g2;
        return g2;
    }

    public static int ad(int i) {
        return (i >>> 20) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
    }

    public static boolean ae(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgyx) {
            return ((zzgyx) obj).ck();
        }
        return true;
    }

    public static long x(long j, Object obj) {
        return ((Long) gbc.v(j, obj)).longValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0276  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static aj y(cyk cykVar, i iVar, i iVar2) {
        int i;
        int charAt;
        int i2;
        int[] iArr;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        char charAt2;
        int i9;
        char charAt3;
        int i10;
        char charAt4;
        int i11;
        char charAt5;
        int i12;
        char charAt6;
        int i13;
        char charAt7;
        int i14;
        char charAt8;
        int i15;
        char charAt9;
        int i16;
        int i17;
        Object[] objArr;
        int i18;
        Class<?> cls;
        int objectFieldOffset;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        Field z;
        char charAt10;
        int i25;
        int i26;
        int i27;
        int i28;
        Object obj;
        Field z2;
        Object obj2;
        Field z3;
        int i29;
        char charAt11;
        int i30;
        char charAt12;
        int i31;
        char charAt13;
        int i32;
        char charAt14;
        if (!(cykVar instanceof cyk)) {
            cykVar.getClass();
            throw new ClassCastException();
        }
        String str = cykVar.f13761c;
        int length = str.length();
        int i33 = 55296;
        if (str.charAt(0) >= 55296) {
            int i34 = 1;
            while (true) {
                i = i34 + 1;
                if (str.charAt(i34) < 55296) {
                    break;
                }
                i34 = i;
            }
        } else {
            i = 1;
        }
        int i35 = i + 1;
        int charAt15 = str.charAt(i);
        if (charAt15 >= 55296) {
            int i36 = charAt15 & 8191;
            int i37 = 13;
            while (true) {
                i32 = i35 + 1;
                charAt14 = str.charAt(i35);
                if (charAt14 < 55296) {
                    break;
                }
                i36 |= (charAt14 & 8191) << i37;
                i37 += 13;
                i35 = i32;
            }
            charAt15 = i36 | (charAt14 << i37);
            i35 = i32;
        }
        if (charAt15 == 0) {
            iArr = f3939b;
            i2 = 0;
            i4 = 0;
            i6 = 0;
            charAt = 0;
            i3 = 0;
            i5 = 0;
            i7 = 0;
        } else {
            int i38 = i35 + 1;
            int charAt16 = str.charAt(i35);
            if (charAt16 >= 55296) {
                int i39 = charAt16 & 8191;
                int i40 = 13;
                while (true) {
                    i15 = i38 + 1;
                    charAt9 = str.charAt(i38);
                    if (charAt9 < 55296) {
                        break;
                    }
                    i39 |= (charAt9 & 8191) << i40;
                    i40 += 13;
                    i38 = i15;
                }
                charAt16 = i39 | (charAt9 << i40);
                i38 = i15;
            }
            int i41 = i38 + 1;
            int charAt17 = str.charAt(i38);
            if (charAt17 >= 55296) {
                int i42 = charAt17 & 8191;
                int i43 = 13;
                while (true) {
                    i14 = i41 + 1;
                    charAt8 = str.charAt(i41);
                    if (charAt8 < 55296) {
                        break;
                    }
                    i42 |= (charAt8 & 8191) << i43;
                    i43 += 13;
                    i41 = i14;
                }
                charAt17 = i42 | (charAt8 << i43);
                i41 = i14;
            }
            int i44 = i41 + 1;
            int charAt18 = str.charAt(i41);
            if (charAt18 >= 55296) {
                int i45 = charAt18 & 8191;
                int i46 = 13;
                while (true) {
                    i13 = i44 + 1;
                    charAt7 = str.charAt(i44);
                    if (charAt7 < 55296) {
                        break;
                    }
                    i45 |= (charAt7 & 8191) << i46;
                    i46 += 13;
                    i44 = i13;
                }
                charAt18 = i45 | (charAt7 << i46);
                i44 = i13;
            }
            int i47 = i44 + 1;
            int charAt19 = str.charAt(i44);
            if (charAt19 >= 55296) {
                int i48 = charAt19 & 8191;
                int i49 = 13;
                while (true) {
                    i12 = i47 + 1;
                    charAt6 = str.charAt(i47);
                    if (charAt6 < 55296) {
                        break;
                    }
                    i48 |= (charAt6 & 8191) << i49;
                    i49 += 13;
                    i47 = i12;
                }
                charAt19 = i48 | (charAt6 << i49);
                i47 = i12;
            }
            int i50 = i47 + 1;
            charAt = str.charAt(i47);
            if (charAt >= 55296) {
                int i51 = charAt & 8191;
                int i52 = 13;
                while (true) {
                    i11 = i50 + 1;
                    charAt5 = str.charAt(i50);
                    if (charAt5 < 55296) {
                        break;
                    }
                    i51 |= (charAt5 & 8191) << i52;
                    i52 += 13;
                    i50 = i11;
                }
                charAt = i51 | (charAt5 << i52);
                i50 = i11;
            }
            int i53 = i50 + 1;
            int charAt20 = str.charAt(i50);
            if (charAt20 >= 55296) {
                int i54 = charAt20 & 8191;
                int i55 = 13;
                while (true) {
                    i10 = i53 + 1;
                    charAt4 = str.charAt(i53);
                    if (charAt4 < 55296) {
                        break;
                    }
                    i54 |= (charAt4 & 8191) << i55;
                    i55 += 13;
                    i53 = i10;
                }
                charAt20 = i54 | (charAt4 << i55);
                i53 = i10;
            }
            int i56 = i53 + 1;
            int charAt21 = str.charAt(i53);
            if (charAt21 >= 55296) {
                int i57 = charAt21 & 8191;
                int i58 = 13;
                while (true) {
                    i9 = i56 + 1;
                    charAt3 = str.charAt(i56);
                    if (charAt3 < 55296) {
                        break;
                    }
                    i57 |= (charAt3 & 8191) << i58;
                    i58 += 13;
                    i56 = i9;
                }
                charAt21 = i57 | (charAt3 << i58);
                i56 = i9;
            }
            int i59 = i56 + 1;
            int charAt22 = str.charAt(i56);
            if (charAt22 >= 55296) {
                int i60 = charAt22 & 8191;
                int i61 = 13;
                while (true) {
                    i8 = i59 + 1;
                    charAt2 = str.charAt(i59);
                    if (charAt2 < 55296) {
                        break;
                    }
                    i60 |= (charAt2 & 8191) << i61;
                    i61 += 13;
                    i59 = i8;
                }
                charAt22 = i60 | (charAt2 << i61);
                i59 = i8;
            }
            int i62 = charAt16 + charAt16 + charAt17;
            i2 = charAt16;
            i35 = i59;
            iArr = new int[charAt22 + charAt20 + charAt21];
            int i63 = charAt20;
            i3 = charAt18;
            i4 = i63;
            i5 = charAt19;
            i6 = i62;
            i7 = charAt22;
        }
        Unsafe unsafe = f3938a;
        Object[] objArr2 = cykVar.f13762d;
        Class<?> cls2 = cykVar.f13760b.getClass();
        int i64 = i7 + i4;
        int i65 = charAt + charAt;
        int[] iArr2 = new int[charAt * 3];
        Object[] objArr3 = new Object[i65];
        int i66 = i64;
        int i67 = i7;
        int i68 = 0;
        int i69 = 0;
        while (i35 < length) {
            int i70 = i35 + 1;
            int charAt23 = str.charAt(i35);
            if (charAt23 >= i33) {
                int i71 = charAt23 & 8191;
                int i72 = i70;
                int i73 = 13;
                while (true) {
                    i31 = i72 + 1;
                    charAt13 = str.charAt(i72);
                    i16 = length;
                    if (charAt13 < 55296) {
                        break;
                    }
                    i71 |= (charAt13 & 8191) << i73;
                    i73 += 13;
                    i72 = i31;
                    length = i16;
                }
                charAt23 = i71 | (charAt13 << i73);
                i17 = i31;
            } else {
                i16 = length;
                i17 = i70;
            }
            int i74 = i17 + 1;
            int charAt24 = str.charAt(i17);
            Object[] objArr4 = objArr2;
            char c2 = 55296;
            if (charAt24 >= 55296) {
                int i75 = charAt24 & 8191;
                int i76 = 13;
                while (true) {
                    i30 = i74 + 1;
                    charAt12 = str.charAt(i74);
                    if (charAt12 < c2) {
                        break;
                    }
                    i75 |= (charAt12 & 8191) << i76;
                    i76 += 13;
                    i74 = i30;
                    c2 = 55296;
                }
                charAt24 = i75 | (charAt12 << i76);
                i74 = i30;
            }
            if ((charAt24 & 1024) != 0) {
                iArr[i68] = i69;
                i68++;
            }
            int i77 = charAt24 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
            int i78 = charAt23;
            int i79 = charAt24 & 2048;
            if (i77 >= 51) {
                int i80 = i74 + 1;
                int charAt25 = str.charAt(i74);
                char c3 = 55296;
                if (charAt25 >= 55296) {
                    int i81 = charAt25 & 8191;
                    int i82 = i80;
                    int i83 = 13;
                    while (true) {
                        i29 = i82 + 1;
                        charAt11 = str.charAt(i82);
                        if (charAt11 < c3) {
                            break;
                        }
                        i81 |= (charAt11 & 8191) << i83;
                        i83 += 13;
                        i82 = i29;
                        c3 = 55296;
                    }
                    charAt25 = i81 | (charAt11 << i83);
                    i26 = i29;
                } else {
                    i26 = i80;
                }
                int i84 = i26;
                int i85 = i77 - 51;
                int i86 = charAt25;
                if (i85 == 9 || i85 == 17) {
                    i27 = i6 + 1;
                    int i87 = i69 / 3;
                    objArr3[i87 + i87 + 1] = objArr4[i6];
                } else {
                    if (i85 == 12) {
                        if (cykVar.e() == 1 || i79 != 0) {
                            i27 = i6 + 1;
                            int i88 = i69 / 3;
                            objArr3[i88 + i88 + 1] = objArr4[i6];
                        } else {
                            i28 = 0;
                            int i89 = i86 + i86;
                            int i90 = i28;
                            obj = objArr4[i89];
                            if (obj instanceof Field) {
                                z2 = (Field) obj;
                            } else {
                                z2 = z(cls2, (String) obj);
                                objArr4[i89] = z2;
                            }
                            int objectFieldOffset2 = (int) unsafe.objectFieldOffset(z2);
                            int i91 = i89 + 1;
                            obj2 = objArr4[i91];
                            if (obj2 instanceof Field) {
                                z3 = (Field) obj2;
                            } else {
                                z3 = z(cls2, (String) obj2);
                                objArr4[i91] = z3;
                            }
                            int objectFieldOffset3 = (int) unsafe.objectFieldOffset(z3);
                            Class<?> cls3 = cls2;
                            i19 = objectFieldOffset3;
                            i23 = objectFieldOffset2;
                            i20 = i84;
                            objArr = objArr3;
                            cls = cls3;
                            i18 = i2;
                            i24 = i90;
                            i22 = 0;
                        }
                    }
                    i28 = i79;
                    int i892 = i86 + i86;
                    int i902 = i28;
                    obj = objArr4[i892];
                    if (obj instanceof Field) {
                    }
                    int objectFieldOffset22 = (int) unsafe.objectFieldOffset(z2);
                    int i912 = i892 + 1;
                    obj2 = objArr4[i912];
                    if (obj2 instanceof Field) {
                    }
                    int objectFieldOffset32 = (int) unsafe.objectFieldOffset(z3);
                    Class<?> cls32 = cls2;
                    i19 = objectFieldOffset32;
                    i23 = objectFieldOffset22;
                    i20 = i84;
                    objArr = objArr3;
                    cls = cls32;
                    i18 = i2;
                    i24 = i902;
                    i22 = 0;
                }
                i6 = i27;
                i28 = i79;
                int i8922 = i86 + i86;
                int i9022 = i28;
                obj = objArr4[i8922];
                if (obj instanceof Field) {
                }
                int objectFieldOffset222 = (int) unsafe.objectFieldOffset(z2);
                int i9122 = i8922 + 1;
                obj2 = objArr4[i9122];
                if (obj2 instanceof Field) {
                }
                int objectFieldOffset322 = (int) unsafe.objectFieldOffset(z3);
                Class<?> cls322 = cls2;
                i19 = objectFieldOffset322;
                i23 = objectFieldOffset222;
                i20 = i84;
                objArr = objArr3;
                cls = cls322;
                i18 = i2;
                i24 = i9022;
                i22 = 0;
            } else {
                int i92 = i6 + 1;
                Field z4 = z(cls2, (String) objArr4[i6]);
                objArr = objArr3;
                if (i77 == 9 || i77 == 17) {
                    i18 = i2;
                    int i93 = i69 / 3;
                    objArr[i93 + i93 + 1] = z4.getType();
                } else {
                    if (i77 == 27) {
                        i18 = i2;
                        i25 = 1;
                        i6 += 2;
                    } else if (i77 == 49) {
                        i6 += 2;
                        i18 = i2;
                        i25 = 1;
                    } else {
                        if (i77 == 12 || i77 == 30 || i77 == 44) {
                            i18 = i2;
                            if (cykVar.e() == 1 || i79 != 0) {
                                i6 += 2;
                                int i94 = i69 / 3;
                                objArr[i94 + i94 + 1] = objArr4[i92];
                                cls = cls2;
                            } else {
                                cls = cls2;
                                i6 = i92;
                                i79 = 0;
                            }
                        } else if (i77 == 50) {
                            int i95 = i6 + 2;
                            int i96 = i67 + 1;
                            iArr[i67] = i69;
                            int i97 = i69 / 3;
                            int i98 = i97 + i97;
                            objArr[i98] = objArr4[i92];
                            if (i79 != 0) {
                                i6 += 3;
                                objArr[i98 + 1] = objArr4[i95];
                                cls = cls2;
                                i67 = i96;
                            } else {
                                i6 = i95;
                                cls = cls2;
                                i67 = i96;
                                i79 = 0;
                            }
                            i18 = i2;
                        } else {
                            i18 = i2;
                        }
                        objectFieldOffset = (int) unsafe.objectFieldOffset(z4);
                        i19 = 1048575;
                        if ((charAt24 & 4096) != 0 || i77 > 17) {
                            i20 = i74;
                            i21 = 0;
                        } else {
                            int i99 = i74 + 1;
                            int charAt26 = str.charAt(i74);
                            if (charAt26 >= 55296) {
                                int i100 = charAt26 & 8191;
                                int i101 = 13;
                                while (true) {
                                    i20 = i99 + 1;
                                    charAt10 = str.charAt(i99);
                                    if (charAt10 < 55296) {
                                        break;
                                    }
                                    i100 |= (charAt10 & 8191) << i101;
                                    i101 += 13;
                                    i99 = i20;
                                }
                                charAt26 = i100 | (charAt10 << i101);
                            } else {
                                i20 = i99;
                            }
                            int i102 = (charAt26 / 32) + i18 + i18;
                            Object obj3 = objArr4[i102];
                            if (obj3 instanceof Field) {
                                z = (Field) obj3;
                            } else {
                                z = z(cls, (String) obj3);
                                objArr4[i102] = z;
                            }
                            i19 = (int) unsafe.objectFieldOffset(z);
                            i21 = charAt26 % 32;
                        }
                        if (i77 >= 18 && i77 <= 49) {
                            iArr[i66] = objectFieldOffset;
                            i66++;
                        }
                        i22 = i21;
                        i23 = objectFieldOffset;
                        i24 = i79;
                    }
                    int i103 = i69 / 3;
                    objArr[i103 + i103 + i25] = objArr4[i92];
                    cls = cls2;
                    objectFieldOffset = (int) unsafe.objectFieldOffset(z4);
                    i19 = 1048575;
                    if ((charAt24 & 4096) != 0) {
                    }
                    i20 = i74;
                    i21 = 0;
                    if (i77 >= 18) {
                        iArr[i66] = objectFieldOffset;
                        i66++;
                    }
                    i22 = i21;
                    i23 = objectFieldOffset;
                    i24 = i79;
                }
                cls = cls2;
                i6 = i92;
                objectFieldOffset = (int) unsafe.objectFieldOffset(z4);
                i19 = 1048575;
                if ((charAt24 & 4096) != 0) {
                }
                i20 = i74;
                i21 = 0;
                if (i77 >= 18) {
                }
                i22 = i21;
                i23 = objectFieldOffset;
                i24 = i79;
            }
            int i104 = i69 + 1;
            iArr2[i69] = i78;
            int i105 = i69 + 2;
            String str2 = str;
            iArr2[i104] = ((charAt24 & 512) != 0 ? C.ENCODING_PCM_A_LAW : 0) | ((charAt24 & 256) != 0 ? C.ENCODING_PCM_MU_LAW : 0) | (i24 != 0 ? Integer.MIN_VALUE : 0) | (i77 << 20) | i23;
            i69 += 3;
            iArr2[i105] = (i22 << 20) | i19;
            cls2 = cls;
            objArr2 = objArr4;
            length = i16;
            objArr3 = objArr;
            i2 = i18;
            i35 = i20;
            str = str2;
            i33 = 55296;
        }
        return new aj(iArr2, objArr3, i3, i5, cykVar.f13760b, iArr, i7, i64, iVar, iVar2);
    }

    public static Field z(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder o = tn.o("Field ", str, " for ", name, " not found. Known fields are ");
            o.append(arrays);
            throw new RuntimeException(o.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:405:0x0bd3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0be1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x093d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0952 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int af(Object obj, byte[] bArr, int i, int i2, int i3, fse fseVar) {
        aj ajVar;
        Unsafe unsafe;
        Object obj2;
        Object obj3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        byte[] bArr2;
        int i10;
        fse fseVar2;
        int i11;
        int z;
        int i12;
        byte[] bArr3;
        int i13;
        int i14;
        fse fseVar3;
        int i15;
        int i16;
        Unsafe unsafe2;
        int bi;
        Object obj4;
        Unsafe unsafe3;
        fse fseVar4;
        Object obj5;
        fse fseVar5;
        byte[] bArr4;
        fse fseVar6;
        byte[] bArr5;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        byte[] bArr6;
        fse fseVar7;
        int i22;
        int t;
        byte[] bArr7;
        int i23;
        int i24;
        int v;
        byte[] bArr8;
        int i25;
        fse fseVar8;
        int i26;
        int i27;
        int au;
        int v2;
        int i28;
        zzgzj zzgzjVar;
        int i29;
        byte[] bArr9;
        int i30;
        fse fseVar9;
        int ag;
        byte[] bArr10;
        int i31;
        fse fseVar10;
        int i32;
        int i33;
        int v3;
        int v4;
        int i34;
        aj ajVar2 = this;
        Object obj6 = obj;
        byte[] bArr11 = bArr;
        int i35 = i2;
        fse fseVar11 = fseVar;
        int i36 = ajVar2.n;
        int i37 = ajVar2.v;
        ab(obj6);
        Unsafe unsafe4 = f3938a;
        int i38 = i;
        int i39 = -1;
        int i40 = 0;
        int i41 = 1048575;
        int i42 = 0;
        int i43 = 0;
        while (true) {
            if (i38 < i35) {
                obj3 = null;
                int i44 = i38 + 1;
                int i45 = bArr11[i38];
                if (i45 < 0) {
                    i44 = egh.aj(i45, bArr11, i44, fseVar11);
                    i45 = fseVar11.f17331c;
                }
                int i46 = i44;
                int i47 = i45;
                int i48 = i47 >>> 3;
                int am = i48 > i39 ? (i48 < i37 || i48 > i36) ? -1 : ajVar2.am(i48, i40 / 3) : (i48 < i37 || i48 > i36) ? -1 : ajVar2.am(i48, 0);
                if (am == -1) {
                    i4 = i3;
                    unsafe = unsafe4;
                    i7 = i36;
                    i8 = i37;
                    i9 = i48;
                    i5 = i47;
                    i40 = 0;
                    obj2 = obj6;
                    bArr2 = bArr11;
                    i10 = i46;
                    fseVar2 = fseVar11;
                } else {
                    int i49 = i47 & 7;
                    int[] iArr = ajVar2.q;
                    int i50 = iArr[am + 1];
                    int ad = ad(i50);
                    long j = i50 & 1048575;
                    i7 = i36;
                    if (ad <= 17) {
                        int i51 = iArr[am + 2];
                        int i52 = 1 << (i51 >>> 20);
                        int i53 = i51 & 1048575;
                        i8 = i37;
                        if (i53 != i41) {
                            int i54 = 1048575;
                            i12 = i52;
                            if (i41 != 1048575) {
                                unsafe4.putInt(obj6, i41, i42);
                                i54 = 1048575;
                            }
                            i42 = i53 == i54 ? 0 : unsafe4.getInt(obj6, i53);
                        } else {
                            i12 = i52;
                            i53 = i41;
                        }
                        switch (ad) {
                            case 0:
                                bArr3 = bArr;
                                i13 = am;
                                i14 = i46;
                                fseVar3 = fseVar;
                                i15 = i48;
                                i16 = i47;
                                unsafe2 = unsafe4;
                                if (i49 == 1) {
                                    i42 |= i12;
                                    gbc.f17849g.n(obj6, j, Double.longBitsToDouble(egh.ad(i14, bArr3)));
                                    i35 = i2;
                                    fseVar11 = fseVar3;
                                    i38 = i14 + 8;
                                    bArr11 = bArr3;
                                    i41 = i53;
                                    i40 = i13;
                                    unsafe4 = unsafe2;
                                    i43 = i16;
                                    i39 = i15;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    obj5 = obj6;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 1:
                                bArr3 = bArr;
                                i13 = am;
                                i14 = i46;
                                fseVar3 = fseVar;
                                i15 = i48;
                                i16 = i47;
                                unsafe2 = unsafe4;
                                if (i49 == 5) {
                                    i42 |= i12;
                                    gbc.f17849g.j(obj6, j, Float.intBitsToFloat(egh.ar(bArr3, i14)));
                                    i35 = i2;
                                    i38 = i14 + 4;
                                    fseVar11 = fseVar3;
                                    bArr11 = bArr3;
                                    i41 = i53;
                                    i40 = i13;
                                    unsafe4 = unsafe2;
                                    i43 = i16;
                                    i39 = i15;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    obj5 = obj6;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 2:
                            case 3:
                                bArr3 = bArr;
                                i13 = am;
                                i14 = i46;
                                fseVar3 = fseVar;
                                i16 = i47;
                                i15 = i48;
                                if (i49 == 0) {
                                    i42 |= i12;
                                    bi = egh.bi(bArr3, i14, fseVar3);
                                    unsafe4.putLong(obj6, j, fseVar3.f17332d);
                                    i35 = i2;
                                    fseVar11 = fseVar3;
                                    i38 = bi;
                                    bArr11 = bArr3;
                                    i41 = i53;
                                    i40 = i13;
                                    i43 = i16;
                                    i39 = i15;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    unsafe2 = unsafe4;
                                    obj5 = obj6;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 4:
                            case 11:
                                bArr3 = bArr;
                                i13 = am;
                                i14 = i46;
                                fseVar3 = fseVar;
                                i16 = i47;
                                i15 = i48;
                                if (i49 == 0) {
                                    i42 |= i12;
                                    i38 = egh.v(bArr3, i14, fseVar3);
                                    unsafe4.putInt(obj6, j, fseVar3.f17331c);
                                    i35 = i2;
                                    fseVar11 = fseVar3;
                                    bArr11 = bArr3;
                                    i41 = i53;
                                    i40 = i13;
                                    i43 = i16;
                                    i39 = i15;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    unsafe2 = unsafe4;
                                    obj5 = obj6;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 5:
                            case 14:
                                bArr3 = bArr;
                                obj4 = obj6;
                                i13 = am;
                                i14 = i46;
                                Unsafe unsafe5 = unsafe4;
                                i16 = i47;
                                i15 = i48;
                                if (i49 == 1) {
                                    bi = i14 + 8;
                                    i42 |= i12;
                                    fseVar3 = fseVar;
                                    unsafe4 = unsafe5;
                                    obj6 = obj4;
                                    unsafe4.putLong(obj6, j, egh.ad(i14, bArr3));
                                    i35 = i2;
                                    fseVar11 = fseVar3;
                                    i38 = bi;
                                    bArr11 = bArr3;
                                    i41 = i53;
                                    i40 = i13;
                                    i43 = i16;
                                    i39 = i15;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    fseVar3 = fseVar;
                                    unsafe4 = unsafe5;
                                    unsafe2 = unsafe4;
                                    obj5 = obj4;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 6:
                            case 13:
                                bArr3 = bArr;
                                obj4 = obj6;
                                i13 = am;
                                i14 = i46;
                                unsafe3 = unsafe4;
                                i16 = i47;
                                fseVar4 = fseVar;
                                i15 = i48;
                                if (i49 == 5) {
                                    i42 |= i12;
                                    unsafe3.putInt(obj4, j, egh.ar(bArr3, i14));
                                    i35 = i2;
                                    fseVar11 = fseVar4;
                                    i38 = i14 + 4;
                                    unsafe4 = unsafe3;
                                    bArr11 = bArr3;
                                    i41 = i53;
                                    i40 = i13;
                                    obj6 = obj4;
                                    i43 = i16;
                                    i39 = i15;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    unsafe2 = unsafe3;
                                    obj5 = obj4;
                                    fseVar3 = fseVar4;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 7:
                                bArr3 = bArr;
                                obj4 = obj6;
                                i13 = am;
                                i14 = i46;
                                unsafe3 = unsafe4;
                                i16 = i47;
                                fseVar4 = fseVar;
                                i15 = i48;
                                if (i49 == 0) {
                                    i42 |= i12;
                                    i38 = egh.bi(bArr3, i14, fseVar4);
                                    gbc.f17849g.o(obj4, j, fseVar4.f17332d != 0);
                                    i35 = i2;
                                    fseVar11 = fseVar4;
                                    unsafe4 = unsafe3;
                                    bArr11 = bArr3;
                                    i41 = i53;
                                    i40 = i13;
                                    obj6 = obj4;
                                    i43 = i16;
                                    i39 = i15;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    unsafe2 = unsafe3;
                                    obj5 = obj4;
                                    fseVar3 = fseVar4;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 8:
                                bArr3 = bArr;
                                obj4 = obj6;
                                i13 = am;
                                i14 = i46;
                                unsafe3 = unsafe4;
                                i16 = i47;
                                fseVar4 = fseVar;
                                i15 = i48;
                                if (i49 == 2) {
                                    if ((i50 & C.ENCODING_PCM_A_LAW) != 0) {
                                        int v5 = egh.v(bArr3, i14, fseVar4);
                                        int i55 = fseVar4.f17331c;
                                        if (i55 < 0) {
                                            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        int i56 = i42 | i12;
                                        if (i55 == 0) {
                                            fseVar4.f17333e = "";
                                        } else {
                                            bso.f12134a.getClass();
                                            fseVar4.f17333e = bli.t(v5, bArr3, i55);
                                            v5 += i55;
                                        }
                                        i42 = i56;
                                        i38 = v5;
                                    } else {
                                        int i57 = i42 | i12;
                                        int v6 = egh.v(bArr3, i14, fseVar4);
                                        int i58 = fseVar4.f17331c;
                                        if (i58 < 0) {
                                            throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                        }
                                        if (i58 == 0) {
                                            fseVar4.f17333e = "";
                                        } else {
                                            fseVar4.f17333e = new String(bArr3, v6, i58, zzgzk.f8688a);
                                            v6 += i58;
                                        }
                                        i42 = i57;
                                        i38 = v6;
                                    }
                                    unsafe3.putObject(obj4, j, fseVar4.f17333e);
                                    i35 = i2;
                                    fseVar11 = fseVar4;
                                    unsafe4 = unsafe3;
                                    bArr11 = bArr3;
                                    i41 = i53;
                                    i40 = i13;
                                    obj6 = obj4;
                                    i43 = i16;
                                    i39 = i15;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    unsafe2 = unsafe3;
                                    obj5 = obj4;
                                    fseVar3 = fseVar4;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 9:
                                obj4 = obj6;
                                i13 = am;
                                i14 = i46;
                                if (i49 == 2) {
                                    i42 |= i12;
                                    Unsafe unsafe6 = unsafe4;
                                    Object at = ajVar2.at(i13, obj4);
                                    bArr11 = bArr;
                                    i35 = i2;
                                    fseVar11 = fseVar;
                                    i38 = egh.ap(at, ajVar2.ax(i13), bArr11, i14, i35, fseVar11);
                                    ajVar2.ar(obj4, i13, at);
                                    unsafe4 = unsafe6;
                                    i41 = i53;
                                    i40 = i13;
                                    obj6 = obj4;
                                    i39 = i48;
                                    i43 = i47;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    unsafe3 = unsafe4;
                                    fseVar4 = fseVar;
                                    bArr3 = bArr;
                                    i15 = i48;
                                    i16 = i47;
                                    unsafe2 = unsafe3;
                                    obj5 = obj4;
                                    fseVar3 = fseVar4;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 10:
                                fseVar5 = fseVar;
                                obj4 = obj6;
                                i13 = am;
                                i14 = i46;
                                bArr4 = bArr;
                                if (i49 == 2) {
                                    i42 |= i12;
                                    i38 = egh.t(bArr4, i14, fseVar5);
                                    unsafe4.putObject(obj4, j, fseVar5.f17333e);
                                    i35 = i2;
                                    bArr11 = bArr4;
                                    fseVar11 = fseVar5;
                                    i41 = i53;
                                    i40 = i13;
                                    obj6 = obj4;
                                    i39 = i48;
                                    i43 = i47;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    fse fseVar12 = fseVar5;
                                    bArr3 = bArr4;
                                    fseVar3 = fseVar12;
                                    i15 = i48;
                                    i16 = i47;
                                    unsafe2 = unsafe4;
                                    obj5 = obj4;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 12:
                                fseVar5 = fseVar;
                                obj4 = obj6;
                                i13 = am;
                                i14 = i46;
                                bArr4 = bArr;
                                if (i49 == 0) {
                                    i38 = egh.v(bArr4, i14, fseVar5);
                                    int i59 = fseVar5.f17331c;
                                    zzgzd ah = ajVar2.ah(i13);
                                    if ((i50 & Integer.MIN_VALUE) == 0 || ah == null || ah.zza(i59)) {
                                        i42 |= i12;
                                        unsafe4.putInt(obj4, j, i59);
                                    } else {
                                        ac(obj4).h(i47, Long.valueOf(i59));
                                    }
                                    i35 = i2;
                                    bArr11 = bArr4;
                                    fseVar11 = fseVar5;
                                    i41 = i53;
                                    i40 = i13;
                                    obj6 = obj4;
                                    i39 = i48;
                                    i43 = i47;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    fse fseVar122 = fseVar5;
                                    bArr3 = bArr4;
                                    fseVar3 = fseVar122;
                                    i15 = i48;
                                    i16 = i47;
                                    unsafe2 = unsafe4;
                                    obj5 = obj4;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 15:
                                fseVar5 = fseVar;
                                obj4 = obj6;
                                i13 = am;
                                i14 = i46;
                                bArr4 = bArr;
                                if (i49 == 0) {
                                    i42 |= i12;
                                    i38 = egh.v(bArr4, i14, fseVar5);
                                    unsafe4.putInt(obj4, j, zzgxv.zzD(fseVar5.f17331c));
                                    i35 = i2;
                                    bArr11 = bArr4;
                                    fseVar11 = fseVar5;
                                    i41 = i53;
                                    i40 = i13;
                                    obj6 = obj4;
                                    i39 = i48;
                                    i43 = i47;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    fse fseVar1222 = fseVar5;
                                    bArr3 = bArr4;
                                    fseVar3 = fseVar1222;
                                    i15 = i48;
                                    i16 = i47;
                                    unsafe2 = unsafe4;
                                    obj5 = obj4;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            case 16:
                                fseVar6 = fseVar;
                                i13 = am;
                                i14 = i46;
                                if (i49 == 0) {
                                    i42 |= i12;
                                    int bi2 = egh.bi(bArr, i14, fseVar6);
                                    unsafe4.putLong(obj6, j, zzgxv.zzF(fseVar6.f17332d));
                                    i35 = i2;
                                    bArr11 = bArr;
                                    i38 = bi2;
                                    fseVar11 = fseVar6;
                                    i41 = i53;
                                    i40 = i13;
                                    i39 = i48;
                                    i43 = i47;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    bArr3 = bArr;
                                    fseVar3 = fseVar6;
                                    i15 = i48;
                                    i16 = i47;
                                    unsafe2 = unsafe4;
                                    obj5 = obj6;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                            default:
                                if (i49 == 3) {
                                    i42 |= i12;
                                    Object at2 = ajVar2.at(am, obj6);
                                    fseVar6 = fseVar;
                                    i13 = am;
                                    i38 = egh.bc(at2, ajVar2.ax(am), bArr, i46, i2, (i48 << 3) | 4, fseVar6);
                                    ajVar2.ar(obj6, i13, at2);
                                    i35 = i2;
                                    bArr11 = bArr;
                                    fseVar11 = fseVar6;
                                    i41 = i53;
                                    i40 = i13;
                                    i39 = i48;
                                    i43 = i47;
                                    i37 = i8;
                                    i36 = i7;
                                    break;
                                } else {
                                    i13 = am;
                                    bArr3 = bArr;
                                    fseVar3 = fseVar;
                                    i15 = i48;
                                    i14 = i46;
                                    unsafe2 = unsafe4;
                                    i16 = i47;
                                    obj5 = obj6;
                                    i4 = i3;
                                    i10 = i14;
                                    i40 = i13;
                                    unsafe = unsafe2;
                                    i5 = i16;
                                    i9 = i15;
                                    bArr2 = bArr3;
                                    i41 = i53;
                                    obj2 = obj5;
                                    fseVar2 = fseVar3;
                                    break;
                                }
                        }
                    } else {
                        i8 = i37;
                        int i60 = i42;
                        int i61 = am;
                        i16 = i47;
                        Object obj7 = obj6;
                        Unsafe unsafe7 = unsafe4;
                        i15 = i48;
                        if (ad != 27) {
                            i17 = i41;
                            if (ad <= 49) {
                                unsafe = unsafe7;
                                long j2 = i50;
                                Unsafe unsafe8 = f3938a;
                                zzgzj zzgzjVar2 = (zzgzj) unsafe8.getObject(obj7, j);
                                if (zzgzjVar2.zzc()) {
                                    i18 = i60;
                                } else {
                                    int size = zzgzjVar2.size();
                                    if (size == 0) {
                                        i18 = i60;
                                        i34 = 10;
                                    } else {
                                        i18 = i60;
                                        i34 = size + size;
                                    }
                                    zzgzjVar2 = zzgzjVar2.zzf(i34);
                                    unsafe8.putObject(obj7, j, zzgzjVar2);
                                }
                                zzgzj zzgzjVar3 = zzgzjVar2;
                                switch (ad) {
                                    case 18:
                                    case 35:
                                        bArr7 = bArr;
                                        i23 = i2;
                                        obj2 = obj7;
                                        i24 = i46;
                                        i5 = i16;
                                        fseVar2 = fseVar;
                                        if (i49 == 2) {
                                            if (zzgzjVar3 != null) {
                                                throw new ClassCastException();
                                            }
                                            v = egh.v(bArr7, i24, fseVar2);
                                            int i62 = fseVar2.f17331c + v;
                                            if (v < i62) {
                                                Double.longBitsToDouble(egh.ad(v, bArr7));
                                                throw null;
                                            }
                                            if (v != i62) {
                                                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i38 = v;
                                            if (i38 == i24) {
                                                bArr11 = bArr7;
                                                i43 = i5;
                                                obj6 = obj2;
                                                i40 = i61;
                                                i35 = i23;
                                                fseVar11 = fseVar2;
                                                i39 = i15;
                                                break;
                                            } else {
                                                i4 = i3;
                                                i10 = i38;
                                                bArr2 = bArr7;
                                                i40 = i61;
                                                i9 = i15;
                                                i41 = i17;
                                                i42 = i18;
                                                break;
                                            }
                                        } else {
                                            if (i49 == 1) {
                                                if (zzgzjVar3 != null) {
                                                    throw new ClassCastException();
                                                }
                                                Double.longBitsToDouble(egh.ad(i24, bArr7));
                                                throw null;
                                            }
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        }
                                    case 19:
                                    case 36:
                                        bArr7 = bArr;
                                        i23 = i2;
                                        obj2 = obj7;
                                        i24 = i46;
                                        i5 = i16;
                                        fseVar2 = fseVar;
                                        if (i49 != 2) {
                                            if (i49 == 5) {
                                                if (zzgzjVar3 != null) {
                                                    throw new ClassCastException();
                                                }
                                                Float.intBitsToFloat(egh.ar(bArr7, i24));
                                                throw null;
                                            }
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            if (zzgzjVar3 != null) {
                                                throw new ClassCastException();
                                            }
                                            v = egh.v(bArr7, i24, fseVar2);
                                            int i63 = fseVar2.f17331c + v;
                                            if (v < i63) {
                                                Float.intBitsToFloat(egh.ar(bArr7, v));
                                                throw null;
                                            }
                                            if (v != i63) {
                                                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i38 = v;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        bArr7 = bArr;
                                        i23 = i2;
                                        obj2 = obj7;
                                        i24 = i46;
                                        i5 = i16;
                                        fseVar2 = fseVar;
                                        if (i49 == 2) {
                                            ayh ayhVar = (ayh) zzgzjVar3;
                                            i38 = egh.v(bArr7, i24, fseVar2);
                                            int i64 = fseVar2.f17331c + i38;
                                            while (i38 < i64) {
                                                i38 = egh.bi(bArr7, i38, fseVar2);
                                                ayhVar.zzg(fseVar2.f17332d);
                                            }
                                            if (i38 != i64) {
                                                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            if (i49 == 0) {
                                                ayh ayhVar2 = (ayh) zzgzjVar3;
                                                v = egh.bi(bArr7, i24, fseVar2);
                                                ayhVar2.zzg(fseVar2.f17332d);
                                                while (v < i23) {
                                                    int v7 = egh.v(bArr7, v, fseVar2);
                                                    if (i5 == fseVar2.f17331c) {
                                                        v = egh.bi(bArr7, v7, fseVar2);
                                                        ayhVar2.zzg(fseVar2.f17332d);
                                                    } else {
                                                        i38 = v;
                                                        if (i38 == i24) {
                                                        }
                                                    }
                                                }
                                                i38 = v;
                                                if (i38 == i24) {
                                                }
                                            }
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                    case 22:
                                    case 29:
                                    case 39:
                                    case 43:
                                        bArr8 = bArr;
                                        i25 = i2;
                                        fseVar8 = fseVar;
                                        obj2 = obj7;
                                        i26 = i46;
                                        i27 = i16;
                                        if (i49 == 2) {
                                            au = egh.au(bArr8, i26, zzgzjVar3, fseVar8);
                                            i5 = i27;
                                            i23 = i25;
                                            fseVar2 = fseVar8;
                                            i24 = i26;
                                            i38 = au;
                                            bArr7 = bArr8;
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            if (i49 == 0) {
                                                int ag2 = egh.ag(i27, bArr8, i26, i25, zzgzjVar3, fseVar8);
                                                i5 = i27;
                                                bArr7 = bArr8;
                                                i24 = i26;
                                                i23 = i25;
                                                fseVar2 = fseVar8;
                                                i38 = ag2;
                                                if (i38 == i24) {
                                                }
                                            }
                                            i5 = i27;
                                            i23 = i25;
                                            fseVar2 = fseVar8;
                                            i24 = i26;
                                            bArr7 = bArr8;
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case 40:
                                    case 46:
                                        bArr8 = bArr;
                                        i25 = i2;
                                        fseVar8 = fseVar;
                                        obj2 = obj7;
                                        i26 = i46;
                                        i27 = i16;
                                        if (i49 == 2) {
                                            ayh ayhVar3 = (ayh) zzgzjVar3;
                                            v2 = egh.v(bArr8, i26, fseVar8);
                                            int i65 = fseVar8.f17331c + v2;
                                            while (v2 < i65) {
                                                ayhVar3.zzg(egh.ad(v2, bArr8));
                                                v2 += 8;
                                            }
                                            if (v2 != i65) {
                                                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i5 = i27;
                                            i23 = i25;
                                            i38 = v2;
                                            fseVar2 = fseVar8;
                                            i24 = i26;
                                            bArr7 = bArr8;
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            if (i49 == 1) {
                                                au = i26 + 8;
                                                ayh ayhVar4 = (ayh) zzgzjVar3;
                                                ayhVar4.zzg(egh.ad(i26, bArr8));
                                                while (au < i25) {
                                                    int v8 = egh.v(bArr8, au, fseVar8);
                                                    if (i27 == fseVar8.f17331c) {
                                                        ayhVar4.zzg(egh.ad(v8, bArr8));
                                                        au = v8 + 8;
                                                    } else {
                                                        i5 = i27;
                                                        i23 = i25;
                                                        fseVar2 = fseVar8;
                                                        i24 = i26;
                                                        i38 = au;
                                                        bArr7 = bArr8;
                                                        if (i38 == i24) {
                                                        }
                                                    }
                                                }
                                                i5 = i27;
                                                i23 = i25;
                                                fseVar2 = fseVar8;
                                                i24 = i26;
                                                i38 = au;
                                                bArr7 = bArr8;
                                                if (i38 == i24) {
                                                }
                                            }
                                            i5 = i27;
                                            i23 = i25;
                                            fseVar2 = fseVar8;
                                            i24 = i26;
                                            bArr7 = bArr8;
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                    case 24:
                                    case 31:
                                    case 41:
                                    case 45:
                                        bArr8 = bArr;
                                        i25 = i2;
                                        fseVar8 = fseVar;
                                        obj2 = obj7;
                                        i26 = i46;
                                        i27 = i16;
                                        if (i49 == 2) {
                                            uo uoVar = (uo) zzgzjVar3;
                                            v2 = egh.v(bArr8, i26, fseVar8);
                                            int i66 = fseVar8.f17331c + v2;
                                            while (v2 < i66) {
                                                uoVar.zzi(egh.ar(bArr8, v2));
                                                v2 += 4;
                                            }
                                            if (v2 != i66) {
                                                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i5 = i27;
                                            i23 = i25;
                                            i38 = v2;
                                            fseVar2 = fseVar8;
                                            i24 = i26;
                                            bArr7 = bArr8;
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            if (i49 == 5) {
                                                au = i26 + 4;
                                                uo uoVar2 = (uo) zzgzjVar3;
                                                uoVar2.zzi(egh.ar(bArr8, i26));
                                                while (au < i25) {
                                                    int v9 = egh.v(bArr8, au, fseVar8);
                                                    if (i27 == fseVar8.f17331c) {
                                                        uoVar2.zzi(egh.ar(bArr8, v9));
                                                        au = v9 + 4;
                                                    } else {
                                                        i5 = i27;
                                                        i23 = i25;
                                                        fseVar2 = fseVar8;
                                                        i24 = i26;
                                                        i38 = au;
                                                        bArr7 = bArr8;
                                                        if (i38 == i24) {
                                                        }
                                                    }
                                                }
                                                i5 = i27;
                                                i23 = i25;
                                                fseVar2 = fseVar8;
                                                i24 = i26;
                                                i38 = au;
                                                bArr7 = bArr8;
                                                if (i38 == i24) {
                                                }
                                            }
                                            i5 = i27;
                                            i23 = i25;
                                            fseVar2 = fseVar8;
                                            i24 = i26;
                                            bArr7 = bArr8;
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                    case 25:
                                    case 42:
                                        bArr8 = bArr;
                                        i25 = i2;
                                        fseVar8 = fseVar;
                                        obj2 = obj7;
                                        i26 = i46;
                                        i27 = i16;
                                        if (i49 != 2) {
                                            if (i49 == 0) {
                                                if (zzgzjVar3 != null) {
                                                    throw new ClassCastException();
                                                }
                                                egh.bi(bArr8, i26, fseVar8);
                                                throw null;
                                            }
                                            i5 = i27;
                                            i23 = i25;
                                            fseVar2 = fseVar8;
                                            i24 = i26;
                                            bArr7 = bArr8;
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            if (zzgzjVar3 != null) {
                                                throw new ClassCastException();
                                            }
                                            int v10 = egh.v(bArr8, i26, fseVar8);
                                            int i67 = fseVar8.f17331c + v10;
                                            if (v10 < i67) {
                                                egh.bi(bArr8, v10, fseVar8);
                                                throw null;
                                            }
                                            if (v10 != i67) {
                                                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i5 = i27;
                                            i23 = i25;
                                            i38 = v10;
                                            fseVar2 = fseVar8;
                                            i24 = i26;
                                            bArr7 = bArr8;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                    case 26:
                                        i26 = i46;
                                        bArr8 = bArr;
                                        i25 = i2;
                                        fseVar8 = fseVar;
                                        obj2 = obj7;
                                        int i68 = i16;
                                        if (i49 != 2) {
                                            i15 = i15;
                                            i5 = i68;
                                            i23 = i25;
                                            fseVar2 = fseVar8;
                                            i24 = i26;
                                            bArr7 = bArr8;
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        } else if ((j2 & 536870912) == 0) {
                                            int v11 = egh.v(bArr8, i26, fseVar8);
                                            int i69 = fseVar8.f17331c;
                                            if (i69 < 0) {
                                                throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i69 == 0) {
                                                zzgzjVar3.add("");
                                            } else {
                                                zzgzjVar3.add(new String(bArr8, v11, i69, zzgzk.f8688a));
                                                v11 += i69;
                                            }
                                            while (v11 < i25) {
                                                int v12 = egh.v(bArr8, v11, fseVar8);
                                                if (i68 == fseVar8.f17331c) {
                                                    v11 = egh.v(bArr8, v12, fseVar8);
                                                    int i70 = fseVar8.f17331c;
                                                    if (i70 < 0) {
                                                        throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i70 == 0) {
                                                        zzgzjVar3.add("");
                                                    } else {
                                                        zzgzjVar3.add(new String(bArr8, v11, i70, zzgzk.f8688a));
                                                        v11 += i70;
                                                    }
                                                } else {
                                                    i5 = i68;
                                                    i23 = i25;
                                                    i15 = i15;
                                                    i38 = v11;
                                                    fseVar2 = fseVar8;
                                                    i24 = i26;
                                                    bArr7 = bArr8;
                                                    if (i38 == i24) {
                                                    }
                                                }
                                            }
                                            i5 = i68;
                                            i23 = i25;
                                            i15 = i15;
                                            i38 = v11;
                                            fseVar2 = fseVar8;
                                            i24 = i26;
                                            bArr7 = bArr8;
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            int v13 = egh.v(bArr8, i26, fseVar8);
                                            int i71 = fseVar8.f17331c;
                                            if (i71 < 0) {
                                                throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i71 == 0) {
                                                zzgzjVar3.add("");
                                                i15 = i15;
                                            } else {
                                                int i72 = v13 + i71;
                                                bso.f12134a.getClass();
                                                i15 = i15;
                                                if (bli.r(0, bArr8, v13, i72) != 0) {
                                                    throw new zzgzm("Protocol message had invalid UTF-8.");
                                                }
                                                zzgzjVar3.add(new String(bArr8, v13, i71, zzgzk.f8688a));
                                                v13 = i72;
                                            }
                                            while (v13 < i25) {
                                                int v14 = egh.v(bArr8, v13, fseVar8);
                                                if (i68 == fseVar8.f17331c) {
                                                    v13 = egh.v(bArr8, v14, fseVar8);
                                                    int i73 = fseVar8.f17331c;
                                                    if (i73 < 0) {
                                                        throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i73 == 0) {
                                                        zzgzjVar3.add("");
                                                    } else {
                                                        int i74 = v13 + i73;
                                                        bso.f12134a.getClass();
                                                        if (bli.r(0, bArr8, v13, i74) != 0) {
                                                            throw new zzgzm("Protocol message had invalid UTF-8.");
                                                        }
                                                        zzgzjVar3.add(new String(bArr8, v13, i73, zzgzk.f8688a));
                                                        v13 = i74;
                                                        i68 = i68;
                                                    }
                                                } else {
                                                    i23 = i25;
                                                    fseVar2 = fseVar8;
                                                    i5 = i68;
                                                    i38 = v13;
                                                    bArr7 = bArr8;
                                                    i24 = i26;
                                                    if (i38 == i24) {
                                                    }
                                                }
                                            }
                                            i23 = i25;
                                            fseVar2 = fseVar8;
                                            i5 = i68;
                                            i38 = v13;
                                            bArr7 = bArr8;
                                            i24 = i26;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                    case 27:
                                        if (i49 == 2) {
                                            bArr8 = bArr;
                                            obj2 = obj;
                                            i5 = i16;
                                            i24 = i46;
                                            i23 = i2;
                                            i15 = i15;
                                            i38 = egh.bb(ajVar2.ax(i61), i16, bArr8, i46, i2, zzgzjVar3, fseVar);
                                            fseVar2 = fseVar;
                                            bArr7 = bArr8;
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            obj2 = obj;
                                            i5 = i16;
                                            i24 = i46;
                                            i15 = i15;
                                            i23 = i2;
                                            fseVar2 = fseVar;
                                            bArr7 = bArr;
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                    case 28:
                                        i28 = i2;
                                        if (i49 == 2) {
                                            int v15 = egh.v(bArr, i46, fseVar);
                                            int i75 = fseVar.f17331c;
                                            if (i75 < 0) {
                                                throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                            }
                                            if (i75 > bArr.length - v15) {
                                                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            if (i75 == 0) {
                                                zzgzjVar3.add(zzgxp.zzb);
                                            } else {
                                                zzgzjVar3.add(zzgxp.zzv(bArr, v15, i75));
                                                v15 += i75;
                                            }
                                            while (v15 < i28) {
                                                int v16 = egh.v(bArr, v15, fseVar);
                                                if (i16 == fseVar.f17331c) {
                                                    v15 = egh.v(bArr, v16, fseVar);
                                                    int i76 = fseVar.f17331c;
                                                    if (i76 < 0) {
                                                        throw new zzgzm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                                                    }
                                                    if (i76 > bArr.length - v15) {
                                                        throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                                    }
                                                    if (i76 == 0) {
                                                        zzgzjVar3.add(zzgxp.zzb);
                                                    } else {
                                                        zzgzjVar3.add(zzgxp.zzv(bArr, v15, i76));
                                                        v15 += i76;
                                                    }
                                                } else {
                                                    i38 = v15;
                                                    i5 = i16;
                                                    i24 = i46;
                                                    i15 = i15;
                                                    fseVar2 = fseVar;
                                                    bArr7 = bArr;
                                                    i23 = i28;
                                                    obj2 = obj;
                                                    if (i38 == i24) {
                                                    }
                                                }
                                            }
                                            i38 = v15;
                                            i5 = i16;
                                            i24 = i46;
                                            i15 = i15;
                                            fseVar2 = fseVar;
                                            bArr7 = bArr;
                                            i23 = i28;
                                            obj2 = obj;
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            i5 = i16;
                                            i24 = i46;
                                            i15 = i15;
                                            fseVar2 = fseVar;
                                            bArr7 = bArr;
                                            i23 = i28;
                                            obj2 = obj;
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                    case 30:
                                    case 44:
                                        if (i49 == 2) {
                                            int au2 = egh.au(bArr, i46, zzgzjVar3, fseVar);
                                            i28 = i2;
                                            zzgzjVar = zzgzjVar3;
                                            i30 = i46;
                                            i29 = i16;
                                            bArr9 = bArr;
                                            ag = au2;
                                            fseVar9 = fseVar;
                                        } else if (i49 == 0) {
                                            zzgzjVar = zzgzjVar3;
                                            i29 = i16;
                                            bArr9 = bArr;
                                            i30 = i46;
                                            i28 = i2;
                                            fseVar9 = fseVar;
                                            ag = egh.ag(i16, bArr, i46, i2, zzgzjVar, fseVar);
                                        } else {
                                            obj2 = obj;
                                            bArr7 = bArr;
                                            fseVar2 = fseVar;
                                            i5 = i16;
                                            i24 = i46;
                                            i23 = i2;
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        }
                                        e.z(obj7, i15, zzgzjVar, ajVar2.ah(i61), null, ajVar2.m);
                                        fseVar2 = fseVar9;
                                        i38 = ag;
                                        bArr7 = bArr9;
                                        i5 = i29;
                                        i24 = i30;
                                        i23 = i28;
                                        obj2 = obj;
                                        if (i38 == i24) {
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        bArr10 = bArr;
                                        i31 = i2;
                                        fseVar10 = fseVar;
                                        i32 = i46;
                                        i33 = i16;
                                        if (i49 == 2) {
                                            uo uoVar3 = (uo) zzgzjVar3;
                                            v4 = egh.v(bArr10, i32, fseVar10);
                                            int i77 = fseVar10.f17331c + v4;
                                            while (v4 < i77) {
                                                v4 = egh.v(bArr10, v4, fseVar10);
                                                uoVar3.zzi(zzgxv.zzD(fseVar10.f17331c));
                                            }
                                            if (v4 != i77) {
                                                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i38 = v4;
                                            bArr7 = bArr10;
                                            i23 = i31;
                                            i5 = i33;
                                            i24 = i32;
                                            obj2 = obj7;
                                            fseVar2 = fseVar10;
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            if (i49 == 0) {
                                                uo uoVar4 = (uo) zzgzjVar3;
                                                v3 = egh.v(bArr10, i32, fseVar10);
                                                uoVar4.zzi(zzgxv.zzD(fseVar10.f17331c));
                                                while (v3 < i31) {
                                                    int v17 = egh.v(bArr10, v3, fseVar10);
                                                    if (i33 == fseVar10.f17331c) {
                                                        v3 = egh.v(bArr10, v17, fseVar10);
                                                        uoVar4.zzi(zzgxv.zzD(fseVar10.f17331c));
                                                    } else {
                                                        i38 = v3;
                                                        bArr7 = bArr10;
                                                        i23 = i31;
                                                        i5 = i33;
                                                        i24 = i32;
                                                        obj2 = obj7;
                                                        fseVar2 = fseVar10;
                                                        if (i38 == i24) {
                                                        }
                                                    }
                                                }
                                                i38 = v3;
                                                bArr7 = bArr10;
                                                i23 = i31;
                                                i5 = i33;
                                                i24 = i32;
                                                obj2 = obj7;
                                                fseVar2 = fseVar10;
                                                if (i38 == i24) {
                                                }
                                            }
                                            bArr7 = bArr10;
                                            i23 = i31;
                                            i5 = i33;
                                            i24 = i32;
                                            obj2 = obj7;
                                            fseVar2 = fseVar10;
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                    case 34:
                                    case 48:
                                        bArr10 = bArr;
                                        i31 = i2;
                                        fseVar10 = fseVar;
                                        i32 = i46;
                                        i33 = i16;
                                        if (i49 == 2) {
                                            ayh ayhVar5 = (ayh) zzgzjVar3;
                                            v4 = egh.v(bArr10, i32, fseVar10);
                                            int i78 = fseVar10.f17331c + v4;
                                            while (v4 < i78) {
                                                v4 = egh.bi(bArr10, v4, fseVar10);
                                                ayhVar5.zzg(zzgxv.zzF(fseVar10.f17332d));
                                            }
                                            if (v4 != i78) {
                                                throw new zzgzm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                                            }
                                            i38 = v4;
                                            bArr7 = bArr10;
                                            i23 = i31;
                                            i5 = i33;
                                            i24 = i32;
                                            obj2 = obj7;
                                            fseVar2 = fseVar10;
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            if (i49 == 0) {
                                                ayh ayhVar6 = (ayh) zzgzjVar3;
                                                v3 = egh.bi(bArr10, i32, fseVar10);
                                                ayhVar6.zzg(zzgxv.zzF(fseVar10.f17332d));
                                                while (v3 < i31) {
                                                    int v18 = egh.v(bArr10, v3, fseVar10);
                                                    if (i33 == fseVar10.f17331c) {
                                                        v3 = egh.bi(bArr10, v18, fseVar10);
                                                        ayhVar6.zzg(zzgxv.zzF(fseVar10.f17332d));
                                                    } else {
                                                        i38 = v3;
                                                        bArr7 = bArr10;
                                                        i23 = i31;
                                                        i5 = i33;
                                                        i24 = i32;
                                                        obj2 = obj7;
                                                        fseVar2 = fseVar10;
                                                        if (i38 == i24) {
                                                        }
                                                    }
                                                }
                                                i38 = v3;
                                                bArr7 = bArr10;
                                                i23 = i31;
                                                i5 = i33;
                                                i24 = i32;
                                                obj2 = obj7;
                                                fseVar2 = fseVar10;
                                                if (i38 == i24) {
                                                }
                                            }
                                            bArr7 = bArr10;
                                            i23 = i31;
                                            i5 = i33;
                                            i24 = i32;
                                            obj2 = obj7;
                                            fseVar2 = fseVar10;
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                    default:
                                        if (i49 == 3) {
                                            int i79 = (i16 & (-8)) | 4;
                                            g.ah ax = ajVar2.ax(i61);
                                            Object zze = ax.zze();
                                            i33 = i16;
                                            int bc = egh.bc(zze, ax, bArr, i46, i2, i79, fseVar);
                                            i32 = i46;
                                            int i80 = i79;
                                            fseVar10 = fseVar;
                                            ax.g(zze);
                                            fseVar10.f17333e = zze;
                                            zzgzjVar3.add(zze);
                                            while (bc < i2) {
                                                int v19 = egh.v(bArr, bc, fseVar10);
                                                if (i33 == fseVar10.f17331c) {
                                                    int i81 = i80;
                                                    Object zze2 = ax.zze();
                                                    bc = egh.bc(zze2, ax, bArr, v19, i2, i81, fseVar);
                                                    i80 = i81;
                                                    fseVar10 = fseVar;
                                                    ax.g(zze2);
                                                    fseVar10.f17333e = zze2;
                                                    zzgzjVar3.add(zze2);
                                                } else {
                                                    bArr7 = bArr;
                                                    i23 = i2;
                                                    i38 = bc;
                                                    i5 = i33;
                                                    i24 = i32;
                                                    obj2 = obj7;
                                                    fseVar2 = fseVar10;
                                                    if (i38 == i24) {
                                                    }
                                                }
                                            }
                                            bArr7 = bArr;
                                            i23 = i2;
                                            i38 = bc;
                                            i5 = i33;
                                            i24 = i32;
                                            obj2 = obj7;
                                            fseVar2 = fseVar10;
                                            if (i38 == i24) {
                                            }
                                        } else {
                                            bArr7 = bArr;
                                            i23 = i2;
                                            obj2 = obj7;
                                            i24 = i46;
                                            i5 = i16;
                                            fseVar2 = fseVar;
                                            i38 = i24;
                                            if (i38 == i24) {
                                            }
                                        }
                                        break;
                                }
                            } else {
                                bArr5 = bArr;
                                i18 = i60;
                                unsafe = unsafe7;
                                obj2 = obj7;
                                i5 = i16;
                                fseVar2 = fseVar;
                                if (ad != 50) {
                                    Unsafe unsafe9 = f3938a;
                                    long j3 = iArr[i61 + 2] & 1048575;
                                    switch (ad) {
                                        case 51:
                                            i19 = i61;
                                            i20 = i46;
                                            bArr2 = bArr5;
                                            i9 = i15;
                                            if (i49 == 1) {
                                                i21 = i20 + 8;
                                                unsafe9.putObject(obj2, j, Double.valueOf(Double.longBitsToDouble(egh.ad(i20, bArr2))));
                                                unsafe9.putInt(obj2, j3, i9);
                                                i38 = i21;
                                                if (i38 != i20) {
                                                    ajVar2 = this;
                                                    i35 = i2;
                                                    i43 = i5;
                                                    obj6 = obj2;
                                                    i39 = i9;
                                                    bArr11 = bArr2;
                                                    fseVar11 = fseVar2;
                                                    i40 = i19;
                                                    break;
                                                } else {
                                                    i4 = i3;
                                                    i10 = i38;
                                                    i40 = i19;
                                                    i41 = i17;
                                                    i42 = i18;
                                                    break;
                                                }
                                            }
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                        case 52:
                                            i19 = i61;
                                            i20 = i46;
                                            bArr2 = bArr5;
                                            i9 = i15;
                                            if (i49 == 5) {
                                                i21 = i20 + 4;
                                                unsafe9.putObject(obj2, j, Float.valueOf(Float.intBitsToFloat(egh.ar(bArr2, i20))));
                                                unsafe9.putInt(obj2, j3, i9);
                                                i38 = i21;
                                                if (i38 != i20) {
                                                }
                                            }
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            i19 = i61;
                                            i20 = i46;
                                            bArr2 = bArr5;
                                            i9 = i15;
                                            if (i49 == 0) {
                                                i21 = egh.bi(bArr2, i20, fseVar2);
                                                unsafe9.putObject(obj2, j, Long.valueOf(fseVar2.f17332d));
                                                unsafe9.putInt(obj2, j3, i9);
                                                i38 = i21;
                                                if (i38 != i20) {
                                                }
                                            }
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                        case 55:
                                        case 62:
                                            i19 = i61;
                                            i20 = i46;
                                            bArr2 = bArr5;
                                            i9 = i15;
                                            if (i49 == 0) {
                                                i21 = egh.v(bArr2, i20, fseVar2);
                                                unsafe9.putObject(obj2, j, Integer.valueOf(fseVar2.f17331c));
                                                unsafe9.putInt(obj2, j3, i9);
                                                i38 = i21;
                                                if (i38 != i20) {
                                                }
                                            }
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            i19 = i61;
                                            i20 = i46;
                                            bArr2 = bArr5;
                                            i9 = i15;
                                            if (i49 == 1) {
                                                i21 = i20 + 8;
                                                unsafe9.putObject(obj2, j, Long.valueOf(egh.ad(i20, bArr2)));
                                                unsafe9.putInt(obj2, j3, i9);
                                                i38 = i21;
                                                if (i38 != i20) {
                                                }
                                            }
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                        case 57:
                                        case 64:
                                            i19 = i61;
                                            i20 = i46;
                                            bArr2 = bArr5;
                                            i9 = i15;
                                            if (i49 == 5) {
                                                i21 = i20 + 4;
                                                unsafe9.putObject(obj2, j, Integer.valueOf(egh.ar(bArr2, i20)));
                                                unsafe9.putInt(obj2, j3, i9);
                                                i38 = i21;
                                                if (i38 != i20) {
                                                }
                                            }
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                        case 58:
                                            i19 = i61;
                                            i20 = i46;
                                            bArr2 = bArr5;
                                            i9 = i15;
                                            if (i49 == 0) {
                                                i21 = egh.bi(bArr2, i20, fseVar2);
                                                unsafe9.putObject(obj2, j, Boolean.valueOf(fseVar2.f17332d != 0));
                                                unsafe9.putInt(obj2, j3, i9);
                                                i38 = i21;
                                                if (i38 != i20) {
                                                }
                                            }
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                        case 59:
                                            i19 = i61;
                                            i20 = i46;
                                            bArr2 = bArr5;
                                            i9 = i15;
                                            if (i49 == 2) {
                                                int v20 = egh.v(bArr2, i20, fseVar2);
                                                int i82 = fseVar2.f17331c;
                                                if (i82 == 0) {
                                                    unsafe9.putObject(obj2, j, "");
                                                } else {
                                                    int i83 = v20 + i82;
                                                    if ((i50 & C.ENCODING_PCM_A_LAW) != 0) {
                                                        bso.f12134a.getClass();
                                                        if (bli.r(0, bArr2, v20, i83) != 0) {
                                                            throw new zzgzm("Protocol message had invalid UTF-8.");
                                                        }
                                                    }
                                                    unsafe9.putObject(obj2, j, new String(bArr2, v20, i82, zzgzk.f8688a));
                                                    v20 = i83;
                                                }
                                                unsafe9.putInt(obj2, j3, i9);
                                                i38 = v20;
                                                if (i38 != i20) {
                                                }
                                            }
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                        case 60:
                                            i9 = i15;
                                            if (i49 == 2) {
                                                Object ag3 = ajVar2.ag(i9, i61, obj2);
                                                int ap = egh.ap(ag3, ajVar2.ax(i61), bArr5, i46, i2, fseVar2);
                                                bArr2 = bArr5;
                                                fseVar2 = fseVar2;
                                                ajVar2.av(obj2, i9, ag3, i61);
                                                i19 = i61;
                                                i20 = i46;
                                                i38 = ap;
                                                if (i38 != i20) {
                                                }
                                            } else {
                                                fseVar2 = fseVar2;
                                                bArr2 = bArr5;
                                                i19 = i61;
                                                i20 = i46;
                                                i38 = i20;
                                                if (i38 != i20) {
                                                }
                                            }
                                            break;
                                        case 61:
                                            bArr6 = bArr5;
                                            fseVar7 = fseVar2;
                                            i22 = i46;
                                            i9 = i15;
                                            if (i49 == 2) {
                                                t = egh.t(bArr6, i22, fseVar7);
                                                unsafe9.putObject(obj2, j, fseVar7.f17333e);
                                                unsafe9.putInt(obj2, j3, i9);
                                                fseVar2 = fseVar7;
                                                i38 = t;
                                                i19 = i61;
                                                i20 = i22;
                                                bArr2 = bArr6;
                                                if (i38 != i20) {
                                                }
                                            }
                                            fseVar2 = fseVar7;
                                            i19 = i61;
                                            i20 = i22;
                                            bArr2 = bArr6;
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                        case 63:
                                            bArr6 = bArr5;
                                            fseVar7 = fseVar2;
                                            i22 = i46;
                                            i9 = i15;
                                            if (i49 == 0) {
                                                t = egh.v(bArr6, i22, fseVar7);
                                                int i84 = fseVar7.f17331c;
                                                zzgzd ah2 = ajVar2.ah(i61);
                                                if (ah2 == null || ah2.zza(i84)) {
                                                    unsafe9.putObject(obj2, j, Integer.valueOf(i84));
                                                    unsafe9.putInt(obj2, j3, i9);
                                                } else {
                                                    ac(obj2).h(i5, Long.valueOf(i84));
                                                }
                                                fseVar2 = fseVar7;
                                                i38 = t;
                                                i19 = i61;
                                                i20 = i22;
                                                bArr2 = bArr6;
                                                if (i38 != i20) {
                                                }
                                            }
                                            fseVar2 = fseVar7;
                                            i19 = i61;
                                            i20 = i22;
                                            bArr2 = bArr6;
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                        case 66:
                                            bArr6 = bArr5;
                                            fseVar7 = fseVar2;
                                            i22 = i46;
                                            i9 = i15;
                                            if (i49 == 0) {
                                                t = egh.v(bArr6, i22, fseVar7);
                                                unsafe9.putObject(obj2, j, Integer.valueOf(zzgxv.zzD(fseVar7.f17331c)));
                                                unsafe9.putInt(obj2, j3, i9);
                                                fseVar2 = fseVar7;
                                                i38 = t;
                                                i19 = i61;
                                                i20 = i22;
                                                bArr2 = bArr6;
                                                if (i38 != i20) {
                                                }
                                            }
                                            fseVar2 = fseVar7;
                                            i19 = i61;
                                            i20 = i22;
                                            bArr2 = bArr6;
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                        case 67:
                                            bArr6 = bArr5;
                                            fseVar7 = fseVar2;
                                            i22 = i46;
                                            i9 = i15;
                                            if (i49 == 0) {
                                                int bi3 = egh.bi(bArr6, i22, fseVar7);
                                                unsafe9.putObject(obj2, j, Long.valueOf(zzgxv.zzF(fseVar7.f17332d)));
                                                unsafe9.putInt(obj2, j3, i9);
                                                i19 = i61;
                                                i20 = i22;
                                                i38 = bi3;
                                                fseVar2 = fseVar7;
                                                bArr2 = bArr6;
                                                if (i38 != i20) {
                                                }
                                            }
                                            fseVar2 = fseVar7;
                                            i19 = i61;
                                            i20 = i22;
                                            bArr2 = bArr6;
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                        case 68:
                                            if (i49 == 3) {
                                                i9 = i15;
                                                Object ag4 = ajVar2.ag(i9, i61, obj2);
                                                int bc2 = egh.bc(ag4, ajVar2.ax(i61), bArr5, i46, i2, (i5 & (-8)) | 4, fseVar2);
                                                bArr6 = bArr5;
                                                i22 = i46;
                                                ajVar2.av(obj2, i9, ag4, i61);
                                                i38 = bc2;
                                                fseVar2 = fseVar2;
                                                i19 = i61;
                                                i20 = i22;
                                                bArr2 = bArr6;
                                                if (i38 != i20) {
                                                }
                                            } else {
                                                i9 = i15;
                                                i19 = i61;
                                                i20 = i46;
                                                bArr2 = bArr5;
                                                i38 = i20;
                                                if (i38 != i20) {
                                                }
                                            }
                                            break;
                                        default:
                                            i19 = i61;
                                            i20 = i46;
                                            bArr2 = bArr5;
                                            i9 = i15;
                                            i38 = i20;
                                            if (i38 != i20) {
                                            }
                                            break;
                                    }
                                } else if (i49 == 2) {
                                    Unsafe unsafe10 = f3938a;
                                    Object an = ajVar2.an(i61);
                                    Object object = unsafe10.getObject(obj2, j);
                                    if (!((zzhac) object).zze()) {
                                        zzhac zzb = zzhac.zza().zzb();
                                        fbc.q(zzb, object);
                                        unsafe10.putObject(obj2, j, zzb);
                                    }
                                    throw null;
                                }
                            }
                            i37 = i8;
                            i36 = i7;
                            i41 = i17;
                            unsafe4 = unsafe;
                            i42 = i18;
                        } else if (i49 == 2) {
                            zzgzj zzgzjVar4 = (zzgzj) unsafe7.getObject(obj7, j);
                            if (!zzgzjVar4.zzc()) {
                                int size2 = zzgzjVar4.size();
                                zzgzjVar4 = zzgzjVar4.zzf(size2 == 0 ? 10 : size2 + size2);
                                unsafe7.putObject(obj7, j, zzgzjVar4);
                            }
                            zzgzj zzgzjVar5 = zzgzjVar4;
                            bArr11 = bArr;
                            i35 = i2;
                            i38 = egh.bb(ajVar2.ax(i61), i16, bArr11, i46, i35, zzgzjVar5, fseVar);
                            fseVar11 = fseVar;
                            i42 = i60;
                            i40 = i61;
                            unsafe4 = unsafe7;
                            obj6 = obj7;
                            i43 = i16;
                            i39 = i15;
                            i37 = i8;
                            i36 = i7;
                        } else {
                            bArr5 = bArr;
                            i17 = i41;
                            i18 = i60;
                            unsafe = unsafe7;
                            obj2 = obj7;
                            i5 = i16;
                            fseVar2 = fseVar;
                        }
                        i4 = i3;
                        bArr2 = bArr5;
                        i40 = i61;
                        i10 = i46;
                        i9 = i15;
                        i41 = i17;
                        i42 = i18;
                    }
                }
                if (i5 != i4 || i4 == 0) {
                    if (this.r) {
                        zzgyh zzgyhVar = fseVar2.f17329a;
                        zzgyh zzgyhVar2 = zzgyh.f8676a;
                        gxd gxdVar = gxd.f18927a;
                        if (zzgyhVar != zzgyh.f8677b) {
                            if (zzgyhVar.zzc(this.p, i9) != null) {
                                throw null;
                            }
                            i11 = i5;
                            z = egh.z(i11, bArr2, i10, i2, ac(obj2), fseVar2);
                            i35 = i2;
                            i38 = z;
                            bArr11 = bArr;
                            fseVar11 = fseVar;
                            i43 = i11;
                            ajVar2 = this;
                            obj6 = obj2;
                            i39 = i9;
                            i37 = i8;
                            i36 = i7;
                            unsafe4 = unsafe;
                        }
                    }
                    i11 = i5;
                    z = egh.z(i11, bArr, i10, i2, ac(obj2), fseVar);
                    i35 = i2;
                    i38 = z;
                    bArr11 = bArr;
                    fseVar11 = fseVar;
                    i43 = i11;
                    ajVar2 = this;
                    obj6 = obj2;
                    i39 = i9;
                    i37 = i8;
                    i36 = i7;
                    unsafe4 = unsafe;
                } else {
                    ajVar = this;
                    i35 = i2;
                    i38 = i10;
                    i6 = i42;
                }
            } else {
                ajVar = ajVar2;
                unsafe = unsafe4;
                obj2 = obj6;
                obj3 = null;
                i4 = i3;
                i5 = i43;
                i6 = i42;
            }
        }
        if (i41 != 1048575) {
            unsafe.putInt(obj2, i41, i6);
        }
        for (int i85 = ajVar.s; i85 < ajVar.u; i85++) {
            ajVar.aq(obj2, ajVar.f3940c[i85], obj3);
        }
        if (i4 == 0) {
            if (i38 != i35) {
                throw new zzgzm("Failed to parse the message.");
            }
        } else if (i38 > i35 || i5 != i4) {
            throw new zzgzm("Failed to parse the message.");
        }
        return i38;
    }

    public final Object ag(int i, int i2, Object obj) {
        g.ah ax = ax(i2);
        if (!aj(i, i2, obj)) {
            return ax.zze();
        }
        Object object = f3938a.getObject(obj, aw(i2) & 1048575);
        if (ae(object)) {
            return object;
        }
        Object zze = ax.zze();
        if (object != null) {
            ax.k(zze, object);
        }
        return zze;
    }

    public final zzgzd ah(int i) {
        int i2 = i / 3;
        return (zzgzd) this.t[i2 + i2 + 1];
    }

    public final void ai(Object obj, int i, Object obj2) {
        int[] iArr = this.q;
        int i2 = iArr[i];
        if (aj(i2, i, obj2)) {
            int aw = aw(i) & 1048575;
            Unsafe unsafe = f3938a;
            long j = aw;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2.toString());
            }
            g.ah ax = ax(i);
            if (!aj(i2, i, obj)) {
                if (ae(object)) {
                    Object zze = ax.zze();
                    ax.k(zze, object);
                    unsafe.putObject(obj, j, zze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                ay(i2, i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!ae(object2)) {
                Object zze2 = ax.zze();
                ax.k(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            ax.k(object2, object);
        }
    }

    public final boolean aj(int i, int i2, Object obj) {
        return gbc.q((long) (this.q[i2 + 2] & 1048575), obj) == i;
    }

    public final void ak(Object obj, int i, Object obj2) {
        if (ao(i, obj2)) {
            int aw = aw(i) & 1048575;
            Unsafe unsafe = f3938a;
            long j = aw;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.q[i] + " is present but null: " + obj2.toString());
            }
            g.ah ax = ax(i);
            if (!ao(i, obj)) {
                if (ae(object)) {
                    Object zze = ax.zze();
                    ax.k(zze, object);
                    unsafe.putObject(obj, j, zze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                au(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!ae(object2)) {
                Object zze2 = ax.zze();
                ax.k(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            ax.k(object2, object);
        }
    }

    public final boolean al(zzgyx zzgyxVar, zzgyx zzgyxVar2, int i) {
        return ao(i, zzgyxVar) == ao(i, zzgyxVar2);
    }

    public final int am(int i, int i2) {
        int[] iArr = this.q;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    public final Object an(int i) {
        int i2 = i / 3;
        return this.t[i2 + i2];
    }

    public final boolean ao(int i, Object obj) {
        int i2 = this.q[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int aw = aw(i);
            long j2 = aw & 1048575;
            switch (ad(aw)) {
                case 0:
                    if (Double.doubleToRawLongBits(gbc.f17849g.p(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(gbc.f17849g.k(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (gbc.i(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (gbc.i(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (gbc.q(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (gbc.i(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (gbc.q(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return gbc.f17849g.m(j2, obj);
                case 8:
                    Object v = gbc.v(j2, obj);
                    if (v instanceof String) {
                        if (((String) v).isEmpty()) {
                            return false;
                        }
                    } else {
                        if (!(v instanceof zzgxp)) {
                            throw new IllegalArgumentException();
                        }
                        if (zzgxp.zzb.equals(v)) {
                            return false;
                        }
                    }
                    break;
                case 9:
                    if (gbc.v(j2, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (zzgxp.zzb.equals(gbc.v(j2, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (gbc.q(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (gbc.q(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (gbc.q(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (gbc.i(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (gbc.q(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (gbc.i(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (gbc.v(j2, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i2 >>> 20)) & gbc.q(j, obj)) == 0) {
            return false;
        }
        return true;
    }

    public final boolean ap(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? ao(i, obj) : (i3 & i4) != 0;
    }

    public final void aq(Object obj, int i, Object obj2) {
        int i2 = this.q[i];
        Object v = gbc.v(aw(i) & 1048575, obj);
        if (v == null || ah(i) == null) {
            return;
        }
        throw null;
    }

    public final void ar(Object obj, int i, Object obj2) {
        f3938a.putObject(obj, aw(i) & 1048575, obj2);
        au(i, obj);
    }

    public final void as(int i, Object obj, hj hjVar) {
        zzgxv zzgxvVar = (zzgxv) hjVar.f19371b;
        long j = i & 1048575;
        if ((536870912 & i) != 0) {
            hjVar.v(2);
            gbc.k(j, obj, zzgxvVar.zzx());
        } else if (!this.w) {
            gbc.k(j, obj, hjVar.t());
        } else {
            hjVar.v(2);
            gbc.k(j, obj, zzgxvVar.zzw());
        }
    }

    public final Object at(int i, Object obj) {
        g.ah ax = ax(i);
        int aw = aw(i) & 1048575;
        if (!ao(i, obj)) {
            return ax.zze();
        }
        Object object = f3938a.getObject(obj, aw);
        if (ae(object)) {
            return object;
        }
        Object zze = ax.zze();
        if (object != null) {
            ax.k(zze, object);
        }
        return zze;
    }

    public final void au(int i, Object obj) {
        int i2 = this.q[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        gbc.s(obj, j, (1 << (i2 >>> 20)) | gbc.q(j, obj));
    }

    public final void av(Object obj, int i, Object obj2, int i2) {
        f3938a.putObject(obj, aw(i2) & 1048575, obj2);
        ay(i, i2, obj);
    }

    public final int aw(int i) {
        return this.q[i + 1];
    }

    public final g.ah ax(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.t;
        g.ah ahVar = (g.ah) objArr[i3];
        if (ahVar != null) {
            return ahVar;
        }
        g.ah d2 = gxd.f18927a.d((Class) objArr[i3 + 1]);
        objArr[i3] = d2;
        return d2;
    }

    public final void ay(int i, int i2, Object obj) {
        gbc.s(obj, this.q[i2 + 2] & 1048575, i);
    }

    @Override // g.ah
    public final void d(Object obj, byte[] bArr, int i, int i2, fse fseVar) {
        af(obj, bArr, i, i2, 0, fseVar);
    }

    @Override // g.ah
    public final int e(zzgyx zzgyxVar) {
        int i;
        long doubleToLongBits;
        int i2;
        int floatToIntBits;
        int i3;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int[] iArr = this.q;
            if (i4 >= iArr.length) {
                int hashCode = zzgyxVar.zzt.hashCode() + (i5 * 53);
                if (!this.r) {
                    return hashCode;
                }
                return ((zzgyt) zzgyxVar).zza.f13668b.hashCode() + (hashCode * 53);
            }
            int aw = aw(i4);
            int i6 = 1048575 & aw;
            int ad = ad(aw);
            int i7 = iArr[i4];
            long j = i6;
            int i8 = 37;
            switch (ad) {
                case 0:
                    i = i5 * 53;
                    doubleToLongBits = Double.doubleToLongBits(gbc.f17849g.p(j, zzgyxVar));
                    Charset charset = zzgzk.f8688a;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i5 * 53;
                    floatToIntBits = Float.floatToIntBits(gbc.f17849g.k(j, zzgyxVar));
                    i5 = floatToIntBits + i2;
                    break;
                case 2:
                    i = i5 * 53;
                    doubleToLongBits = gbc.i(j, zzgyxVar);
                    Charset charset2 = zzgzk.f8688a;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i5 * 53;
                    doubleToLongBits = gbc.i(j, zzgyxVar);
                    Charset charset3 = zzgzk.f8688a;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 4:
                    i2 = i5 * 53;
                    floatToIntBits = gbc.q(j, zzgyxVar);
                    i5 = floatToIntBits + i2;
                    break;
                case 5:
                    i = i5 * 53;
                    doubleToLongBits = gbc.i(j, zzgyxVar);
                    Charset charset4 = zzgzk.f8688a;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 6:
                    i2 = i5 * 53;
                    floatToIntBits = gbc.q(j, zzgyxVar);
                    i5 = floatToIntBits + i2;
                    break;
                case 7:
                    i2 = i5 * 53;
                    floatToIntBits = zzgzk.zza(gbc.f17849g.m(j, zzgyxVar));
                    i5 = floatToIntBits + i2;
                    break;
                case 8:
                    i2 = i5 * 53;
                    floatToIntBits = ((String) gbc.v(j, zzgyxVar)).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 9:
                    i3 = i5 * 53;
                    Object v = gbc.v(j, zzgyxVar);
                    if (v != null) {
                        i8 = v.hashCode();
                    }
                    i5 = i3 + i8;
                    break;
                case 10:
                    i2 = i5 * 53;
                    floatToIntBits = gbc.v(j, zzgyxVar).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 11:
                    i2 = i5 * 53;
                    floatToIntBits = gbc.q(j, zzgyxVar);
                    i5 = floatToIntBits + i2;
                    break;
                case 12:
                    i2 = i5 * 53;
                    floatToIntBits = gbc.q(j, zzgyxVar);
                    i5 = floatToIntBits + i2;
                    break;
                case 13:
                    i2 = i5 * 53;
                    floatToIntBits = gbc.q(j, zzgyxVar);
                    i5 = floatToIntBits + i2;
                    break;
                case 14:
                    i = i5 * 53;
                    doubleToLongBits = gbc.i(j, zzgyxVar);
                    Charset charset5 = zzgzk.f8688a;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 15:
                    i2 = i5 * 53;
                    floatToIntBits = gbc.q(j, zzgyxVar);
                    i5 = floatToIntBits + i2;
                    break;
                case 16:
                    i = i5 * 53;
                    doubleToLongBits = gbc.i(j, zzgyxVar);
                    Charset charset6 = zzgzk.f8688a;
                    i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 17:
                    i3 = i5 * 53;
                    Object v2 = gbc.v(j, zzgyxVar);
                    if (v2 != null) {
                        i8 = v2.hashCode();
                    }
                    i5 = i3 + i8;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i2 = i5 * 53;
                    floatToIntBits = gbc.v(j, zzgyxVar).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 50:
                    i2 = i5 * 53;
                    floatToIntBits = gbc.v(j, zzgyxVar).hashCode();
                    i5 = floatToIntBits + i2;
                    break;
                case 51:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i = i5 * 53;
                        doubleToLongBits = Double.doubleToLongBits(((Double) gbc.v(j, zzgyxVar)).doubleValue());
                        Charset charset7 = zzgzk.f8688a;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 52:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = Float.floatToIntBits(((Float) gbc.v(j, zzgyxVar)).floatValue());
                        i5 = floatToIntBits + i2;
                        break;
                    }
                case 53:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i = i5 * 53;
                        doubleToLongBits = x(j, zzgyxVar);
                        Charset charset8 = zzgzk.f8688a;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 54:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i = i5 * 53;
                        doubleToLongBits = x(j, zzgyxVar);
                        Charset charset9 = zzgzk.f8688a;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 55:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = aa(j, zzgyxVar);
                        i5 = floatToIntBits + i2;
                        break;
                    }
                case 56:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i = i5 * 53;
                        doubleToLongBits = x(j, zzgyxVar);
                        Charset charset10 = zzgzk.f8688a;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 57:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = aa(j, zzgyxVar);
                        i5 = floatToIntBits + i2;
                        break;
                    }
                case 58:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = zzgzk.zza(((Boolean) gbc.v(j, zzgyxVar)).booleanValue());
                        i5 = floatToIntBits + i2;
                        break;
                    }
                case 59:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = ((String) gbc.v(j, zzgyxVar)).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    }
                case 60:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = gbc.v(j, zzgyxVar).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    }
                case 61:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = gbc.v(j, zzgyxVar).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    }
                case 62:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = aa(j, zzgyxVar);
                        i5 = floatToIntBits + i2;
                        break;
                    }
                case 63:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = aa(j, zzgyxVar);
                        i5 = floatToIntBits + i2;
                        break;
                    }
                case 64:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = aa(j, zzgyxVar);
                        i5 = floatToIntBits + i2;
                        break;
                    }
                case 65:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i = i5 * 53;
                        doubleToLongBits = x(j, zzgyxVar);
                        Charset charset11 = zzgzk.f8688a;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 66:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = aa(j, zzgyxVar);
                        i5 = floatToIntBits + i2;
                        break;
                    }
                case 67:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i = i5 * 53;
                        doubleToLongBits = x(j, zzgyxVar);
                        Charset charset12 = zzgzk.f8688a;
                        i5 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 68:
                    if (!aj(i7, i4, zzgyxVar)) {
                        break;
                    } else {
                        i2 = i5 * 53;
                        floatToIntBits = gbc.v(j, zzgyxVar).hashCode();
                        i5 = floatToIntBits + i2;
                        break;
                    }
            }
            i4 += 3;
        }
    }

    @Override // g.ah
    public final boolean f(zzgyx zzgyxVar, zzgyx zzgyxVar2) {
        boolean u;
        int i = 0;
        while (true) {
            int[] iArr = this.q;
            if (i < iArr.length) {
                int aw = aw(i);
                long j = aw & 1048575;
                switch (ad(aw)) {
                    case 0:
                        if (!al(zzgyxVar, zzgyxVar2, i)) {
                            break;
                        } else {
                            aul aulVar = gbc.f17849g;
                            if (Double.doubleToLongBits(aulVar.p(j, zzgyxVar)) != Double.doubleToLongBits(aulVar.p(j, zzgyxVar2))) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 1:
                        if (!al(zzgyxVar, zzgyxVar2, i)) {
                            break;
                        } else {
                            aul aulVar2 = gbc.f17849g;
                            if (Float.floatToIntBits(aulVar2.k(j, zzgyxVar)) != Float.floatToIntBits(aulVar2.k(j, zzgyxVar2))) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 2:
                        if (al(zzgyxVar, zzgyxVar2, i) && gbc.i(j, zzgyxVar) == gbc.i(j, zzgyxVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 3:
                        if (al(zzgyxVar, zzgyxVar2, i) && gbc.i(j, zzgyxVar) == gbc.i(j, zzgyxVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 4:
                        if (al(zzgyxVar, zzgyxVar2, i) && gbc.q(j, zzgyxVar) == gbc.q(j, zzgyxVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 5:
                        if (al(zzgyxVar, zzgyxVar2, i) && gbc.i(j, zzgyxVar) == gbc.i(j, zzgyxVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 6:
                        if (al(zzgyxVar, zzgyxVar2, i) && gbc.q(j, zzgyxVar) == gbc.q(j, zzgyxVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 7:
                        if (!al(zzgyxVar, zzgyxVar2, i)) {
                            break;
                        } else {
                            aul aulVar3 = gbc.f17849g;
                            if (aulVar3.m(j, zzgyxVar) != aulVar3.m(j, zzgyxVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 8:
                        if (al(zzgyxVar, zzgyxVar2, i) && e.u(gbc.v(j, zzgyxVar), gbc.v(j, zzgyxVar2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 9:
                        if (al(zzgyxVar, zzgyxVar2, i) && e.u(gbc.v(j, zzgyxVar), gbc.v(j, zzgyxVar2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 10:
                        if (al(zzgyxVar, zzgyxVar2, i) && e.u(gbc.v(j, zzgyxVar), gbc.v(j, zzgyxVar2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 11:
                        if (al(zzgyxVar, zzgyxVar2, i) && gbc.q(j, zzgyxVar) == gbc.q(j, zzgyxVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 12:
                        if (al(zzgyxVar, zzgyxVar2, i) && gbc.q(j, zzgyxVar) == gbc.q(j, zzgyxVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 13:
                        if (al(zzgyxVar, zzgyxVar2, i) && gbc.q(j, zzgyxVar) == gbc.q(j, zzgyxVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 14:
                        if (al(zzgyxVar, zzgyxVar2, i) && gbc.i(j, zzgyxVar) == gbc.i(j, zzgyxVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 15:
                        if (al(zzgyxVar, zzgyxVar2, i) && gbc.q(j, zzgyxVar) == gbc.q(j, zzgyxVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 16:
                        if (al(zzgyxVar, zzgyxVar2, i) && gbc.i(j, zzgyxVar) == gbc.i(j, zzgyxVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 17:
                        if (al(zzgyxVar, zzgyxVar2, i) && e.u(gbc.v(j, zzgyxVar), gbc.v(j, zzgyxVar2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        u = e.u(gbc.v(j, zzgyxVar), gbc.v(j, zzgyxVar2));
                        break;
                    case 50:
                        u = e.u(gbc.v(j, zzgyxVar), gbc.v(j, zzgyxVar2));
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                        long j2 = iArr[i + 2] & 1048575;
                        if (gbc.q(j2, zzgyxVar) == gbc.q(j2, zzgyxVar2) && e.u(gbc.v(j, zzgyxVar), gbc.v(j, zzgyxVar2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    default:
                        i += 3;
                }
                if (u) {
                    i += 3;
                }
            } else if (zzgyxVar.zzt.equals(zzgyxVar2.zzt)) {
                if (this.r) {
                    return ((zzgyt) zzgyxVar).zza.equals(((zzgyt) zzgyxVar2).zza);
                }
                return true;
            }
        }
        return false;
    }

    @Override // g.ah
    public final void g(Object obj) {
        if (!ae(obj)) {
            return;
        }
        int i = 0;
        if (obj instanceof zzgyx) {
            zzgyx zzgyxVar = (zzgyx) obj;
            zzgyxVar.cj(he.UNDEFINED_ITEM_ID);
            zzgyxVar.zzq = 0;
            zzgyxVar.cn();
        }
        while (true) {
            int[] iArr = this.q;
            if (i >= iArr.length) {
                this.m.getClass();
                ((zzgyx) obj).zzt.zzh();
                if (this.r) {
                    this.o.getClass();
                    i.c(obj);
                    return;
                }
                return;
            }
            int aw = aw(i);
            int i2 = 1048575 & aw;
            int ad = ad(aw);
            long j = i2;
            if (ad != 9) {
                if (ad != 60 && ad != 68) {
                    switch (ad) {
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            ((zzgzj) gbc.v(j, obj)).zzb();
                            break;
                        case 50:
                            Unsafe unsafe = f3938a;
                            Object object = unsafe.getObject(obj, j);
                            if (object == null) {
                                break;
                            } else {
                                ((zzhac) object).zzc();
                                unsafe.putObject(obj, j, object);
                                break;
                            }
                    }
                } else if (aj(iArr[i], i, obj)) {
                    ax(i).g(f3938a.getObject(obj, j));
                }
                i += 3;
            }
            if (ao(i, obj)) {
                ax(i).g(f3938a.getObject(obj, j));
            }
            i += 3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00ec, code lost:
    
        return false;
     */
    @Override // g.ah
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean h(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        loop0: while (true) {
            if (i6 < this.s) {
                int i7 = this.f3940c[i6];
                int[] iArr = this.q;
                int i8 = iArr[i7];
                int aw = aw(i7);
                int i9 = iArr[i7 + 2];
                int i10 = i9 & 1048575;
                int i11 = 1 << (i9 >>> 20);
                if (i10 != i4) {
                    if (i10 != 1048575) {
                        i5 = f3938a.getInt(obj, i10);
                    }
                    i2 = i7;
                    i3 = i5;
                    i = i10;
                } else {
                    int i12 = i5;
                    i = i4;
                    i2 = i7;
                    i3 = i12;
                }
                if ((268435456 & aw) != 0 && !ap(obj, i2, i, i3, i11)) {
                    break;
                }
                int ad = ad(aw);
                if (ad == 9 || ad == 17) {
                    if (ap(obj, i2, i, i3, i11) && !ax(i2).h(gbc.v(aw & 1048575, obj))) {
                        break;
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                } else {
                    if (ad != 27) {
                        if (ad == 60 || ad == 68) {
                            if (aj(i8, i2, obj) && !ax(i2).h(gbc.v(aw & 1048575, obj))) {
                                break;
                            }
                        } else if (ad != 49) {
                            if (ad == 50 && !((zzhac) gbc.v(aw & 1048575, obj)).isEmpty()) {
                                throw null;
                            }
                        }
                        i6++;
                        i4 = i;
                        i5 = i3;
                    }
                    List list = (List) gbc.v(aw & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        g.ah ax = ax(i2);
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            if (!ax.h(list.get(i13))) {
                                break loop0;
                            }
                        }
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                }
            } else if (!this.r || ((zzgyt) obj).zza.n()) {
                return true;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:253:0x060a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0033  */
    @Override // g.ah
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(Object obj, gli gliVar) {
        Map.Entry entry;
        Iterator it;
        int i;
        int i2;
        int i3;
        int length;
        int i4;
        int i5;
        Map.Entry entry2;
        int i6;
        aj ajVar = this;
        if (ajVar.r) {
            cxb cxbVar = ((zzgyt) obj).zza;
            if (!cxbVar.f13668b.isEmpty()) {
                Iterator k = cxbVar.k();
                entry = (Map.Entry) k.next();
                it = k;
                Unsafe unsafe = f3938a;
                i = 0;
                i2 = 1048575;
                i3 = 0;
                while (true) {
                    int[] iArr = ajVar.q;
                    length = iArr.length;
                    i iVar = ajVar.o;
                    if (i < length) {
                        while (entry != null) {
                            iVar.getClass();
                            i.d(gliVar, entry);
                            entry = it.hasNext() ? (Map.Entry) it.next() : null;
                        }
                        ((zzgyx) obj).zzt.zzl(gliVar);
                        return;
                    }
                    int aw = ajVar.aw(i);
                    int ad = ad(aw);
                    int i7 = iArr[i];
                    if (ad <= 17) {
                        int i8 = iArr[i + 2];
                        int i9 = i8 & 1048575;
                        Map.Entry entry3 = entry;
                        if (i9 != i2) {
                            i3 = i9 == 1048575 ? 0 : unsafe.getInt(obj, i9);
                            i2 = i9;
                        }
                        int i10 = i3;
                        i6 = 1 << (i8 >>> 20);
                        i4 = i2;
                        i5 = i10;
                        entry2 = entry3;
                    } else {
                        Map.Entry entry4 = entry;
                        i4 = i2;
                        i5 = i3;
                        entry2 = entry4;
                        i6 = 0;
                    }
                    while (entry2 != null && ((dmd) entry2.getKey()).f14416c <= i7) {
                        iVar.getClass();
                        i.d(gliVar, entry2);
                        entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
                    }
                    long j = aw & 1048575;
                    switch (ad) {
                        case 0:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzj(i7, Double.doubleToRawLongBits(gbc.f17849g.p(j, obj)));
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 1:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzh(i7, Float.floatToRawIntBits(gbc.f17849g.k(j, obj)));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 2:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzv(i7, unsafe.getLong(obj, j));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 3:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzv(i7, unsafe.getLong(obj, j));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 4:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzl(i7, unsafe.getInt(obj, j));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 5:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzj(i7, unsafe.getLong(obj, j));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 6:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzh(i7, unsafe.getInt(obj, j));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 7:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzM(i7, gbc.f17849g.m(j, obj));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 8:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                Object object = unsafe.getObject(obj, j);
                                if (object instanceof String) {
                                    ((eub) gliVar).f16166a.zzq(i7, (String) object);
                                } else {
                                    ((eub) gliVar).f16166a.zzN(i7, (zzgxp) object);
                                }
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 9:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                Object object2 = unsafe.getObject(obj, j);
                                g.ah ax = ajVar.ax(i);
                                eub eubVar = (eub) gliVar;
                                eubVar.getClass();
                                eubVar.f16166a.e(i7, (zzhai) object2, ax);
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 10:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzN(i7, (zzgxp) unsafe.getObject(obj, j));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 11:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzt(i7, unsafe.getInt(obj, j));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 12:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzl(i7, unsafe.getInt(obj, j));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 13:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzh(i7, unsafe.getInt(obj, j));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 14:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).f16166a.zzj(i7, unsafe.getLong(obj, j));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 15:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                int i11 = unsafe.getInt(obj, j);
                                ((eub) gliVar).f16166a.zzt(i7, (i11 >> 31) ^ (i11 + i11));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 16:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                long j2 = unsafe.getLong(obj, j);
                                ((eub) gliVar).f16166a.zzv(i7, (j2 + j2) ^ (j2 >> 63));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 17:
                            if (ajVar.ap(obj, i, i4, i5, i6)) {
                                ((eub) gliVar).b(i7, unsafe.getObject(obj, j), ajVar.ax(i));
                            } else {
                                continue;
                            }
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 18:
                            e.ab(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            continue;
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 19:
                            e.i(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            continue;
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 20:
                            e.l(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            continue;
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 21:
                            e.c(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            continue;
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 22:
                            e.n(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            continue;
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 23:
                            e.y(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            continue;
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 24:
                            e.b(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            continue;
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 25:
                            e.o(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            continue;
                            i += 3;
                            ajVar = this;
                            i3 = i5;
                            i2 = i4;
                            entry = entry2;
                        case 26:
                            e.q(iArr[i], (List) unsafe.getObject(obj, j), gliVar);
                            break;
                        case 27:
                            int i12 = iArr[i];
                            List list = (List) unsafe.getObject(obj, j);
                            g.ah ax2 = ajVar.ax(i);
                            i iVar2 = e.f3952a;
                            if (list != null && !list.isEmpty()) {
                                for (int i13 = 0; i13 < list.size(); i13++) {
                                    Object obj2 = list.get(i13);
                                    eub eubVar2 = (eub) gliVar;
                                    eubVar2.getClass();
                                    eubVar2.f16166a.e(i12, (zzhai) obj2, ax2);
                                }
                                break;
                            }
                            break;
                        case 28:
                            e.p(iArr[i], (List) unsafe.getObject(obj, j), gliVar);
                            break;
                        case 29:
                            e.ac(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            break;
                        case 30:
                            e.f(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            break;
                        case 31:
                            e.v(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            break;
                        case 32:
                            e.aa(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            break;
                        case 33:
                            e.h(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            break;
                        case 34:
                            e.k(iArr[i], (List) unsafe.getObject(obj, j), gliVar, false);
                            break;
                        case 35:
                            e.ab(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 36:
                            e.i(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 37:
                            e.l(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 38:
                            e.c(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 39:
                            e.n(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 40:
                            e.y(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 41:
                            e.b(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 42:
                            e.o(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 43:
                            e.ac(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 44:
                            e.f(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 45:
                            e.v(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 46:
                            e.aa(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 47:
                            e.h(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 48:
                            e.k(iArr[i], (List) unsafe.getObject(obj, j), gliVar, true);
                            break;
                        case 49:
                            int i14 = iArr[i];
                            List list2 = (List) unsafe.getObject(obj, j);
                            g.ah ax3 = ajVar.ax(i);
                            i iVar3 = e.f3952a;
                            if (list2 != null && !list2.isEmpty()) {
                                for (int i15 = 0; i15 < list2.size(); i15++) {
                                    ((eub) gliVar).b(i14, list2.get(i15), ax3);
                                }
                                break;
                            }
                            break;
                        case 50:
                            if (unsafe.getObject(obj, j) != null) {
                                throw null;
                            }
                            break;
                        case 51:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzj(i7, Double.doubleToRawLongBits(((Double) gbc.v(j, obj)).doubleValue()));
                                break;
                            }
                            break;
                        case 52:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzh(i7, Float.floatToRawIntBits(((Float) gbc.v(j, obj)).floatValue()));
                                break;
                            }
                            break;
                        case 53:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzv(i7, x(j, obj));
                                break;
                            }
                            break;
                        case 54:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzv(i7, x(j, obj));
                                break;
                            }
                            break;
                        case 55:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzl(i7, aa(j, obj));
                                break;
                            }
                            break;
                        case 56:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzj(i7, x(j, obj));
                                break;
                            }
                            break;
                        case 57:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzh(i7, aa(j, obj));
                                break;
                            }
                            break;
                        case 58:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzM(i7, ((Boolean) gbc.v(j, obj)).booleanValue());
                                break;
                            }
                            break;
                        case 59:
                            if (ajVar.aj(i7, i, obj)) {
                                Object object3 = unsafe.getObject(obj, j);
                                if (object3 instanceof String) {
                                    ((eub) gliVar).f16166a.zzq(i7, (String) object3);
                                    break;
                                } else {
                                    ((eub) gliVar).f16166a.zzN(i7, (zzgxp) object3);
                                    break;
                                }
                            }
                            break;
                        case 60:
                            if (ajVar.aj(i7, i, obj)) {
                                Object object4 = unsafe.getObject(obj, j);
                                g.ah ax4 = ajVar.ax(i);
                                eub eubVar3 = (eub) gliVar;
                                eubVar3.getClass();
                                eubVar3.f16166a.e(i7, (zzhai) object4, ax4);
                                break;
                            }
                            break;
                        case 61:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzN(i7, (zzgxp) unsafe.getObject(obj, j));
                                break;
                            }
                            break;
                        case 62:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzt(i7, aa(j, obj));
                                break;
                            }
                            break;
                        case 63:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzl(i7, aa(j, obj));
                                break;
                            }
                            break;
                        case 64:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzh(i7, aa(j, obj));
                                break;
                            }
                            break;
                        case 65:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).f16166a.zzj(i7, x(j, obj));
                                break;
                            }
                            break;
                        case 66:
                            if (ajVar.aj(i7, i, obj)) {
                                int aa = aa(j, obj);
                                ((eub) gliVar).f16166a.zzt(i7, (aa >> 31) ^ (aa + aa));
                                break;
                            }
                            break;
                        case 67:
                            if (ajVar.aj(i7, i, obj)) {
                                long x = x(j, obj);
                                ((eub) gliVar).f16166a.zzv(i7, (x >> 63) ^ (x + x));
                                break;
                            }
                            break;
                        case 68:
                            if (ajVar.aj(i7, i, obj)) {
                                ((eub) gliVar).b(i7, unsafe.getObject(obj, j), ajVar.ax(i));
                                break;
                            }
                            break;
                    }
                    i += 3;
                    ajVar = this;
                    i3 = i5;
                    i2 = i4;
                    entry = entry2;
                }
            }
        }
        entry = null;
        it = null;
        Unsafe unsafe2 = f3938a;
        i = 0;
        i2 = 1048575;
        i3 = 0;
        while (true) {
            int[] iArr2 = ajVar.q;
            length = iArr2.length;
            i iVar4 = ajVar.o;
            if (i < length) {
            }
            i += 3;
            ajVar = this;
            i3 = i5;
            i2 = i4;
            entry = entry2;
        }
    }

    @Override // g.ah
    public final int j(zzgyx zzgyxVar) {
        int i;
        int zzD;
        int zzE;
        int zzD2;
        int zzd;
        int zzD3;
        int e2;
        int i2;
        int bl;
        int zzD4;
        int size;
        int r;
        int zzD5;
        int zzD6;
        int zzD7;
        int size2;
        int zzD8;
        int zzD9;
        int i3;
        int zzD10;
        int zzE2;
        aj ajVar = this;
        zzgyx zzgyxVar2 = zzgyxVar;
        Unsafe unsafe = f3938a;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int[] iArr = ajVar.q;
            if (i5 >= iArr.length) {
                int zza = zzgyxVar2.zzt.zza() + i8;
                if (!ajVar.r) {
                    return zza;
                }
                eol eolVar = ((zzgyt) zzgyxVar2).zza.f13668b;
                int i9 = eolVar.f15904f;
                int i10 = 0;
                for (int i11 = 0; i11 < i9; i11++) {
                    asf m = eolVar.m(i11);
                    i10 = cxb.j((zzgyl) m.f10744b, m.f10745c) + i10;
                }
                for (Map.Entry entry : eolVar.j()) {
                    i10 = cxb.j((zzgyl) entry.getKey(), entry.getValue()) + i10;
                }
                return zza + i10;
            }
            int aw = ajVar.aw(i5);
            int ad = ad(aw);
            int i12 = iArr[i5];
            int i13 = iArr[i5 + 2];
            int i14 = i13 & i4;
            if (ad <= 17) {
                if (i14 != i6) {
                    i7 = i14 == i4 ? 0 : unsafe.getInt(zzgyxVar2, i14);
                    i6 = i14;
                }
                i = 1 << (i13 >>> 20);
            } else {
                i = 0;
            }
            int i15 = aw & i4;
            if (ad >= zzgyn.zzJ.zza()) {
                zzgyn.zzW.zza();
            }
            long j = i15;
            switch (ad) {
                case 0:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        i8 = dub.f(i12 << 3, 8, i8);
                    }
                    i5 += 3;
                    i4 = 1048575;
                case 1:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        i8 = dub.f(i12 << 3, 4, i8);
                    }
                    ajVar = this;
                    zzgyxVar2 = zzgyxVar;
                    i5 += 3;
                    i4 = 1048575;
                case 2:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        long j2 = unsafe.getLong(zzgyxVar2, j);
                        zzD = zzgyc.zzD(i12 << 3);
                        zzE = zzgyc.zzE(j2);
                        i8 += zzE + zzD;
                    }
                    ajVar = this;
                    i5 += 3;
                    i4 = 1048575;
                case 3:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        long j3 = unsafe.getLong(zzgyxVar2, j);
                        zzD = zzgyc.zzD(i12 << 3);
                        zzE = zzgyc.zzE(j3);
                        i8 += zzE + zzD;
                    }
                    ajVar = this;
                    i5 += 3;
                    i4 = 1048575;
                case 4:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        long j4 = unsafe.getInt(zzgyxVar2, j);
                        zzD = zzgyc.zzD(i12 << 3);
                        zzE = zzgyc.zzE(j4);
                        i8 += zzE + zzD;
                    }
                    ajVar = this;
                    i5 += 3;
                    i4 = 1048575;
                case 5:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        i8 = dub.f(i12 << 3, 8, i8);
                    }
                    ajVar = this;
                    zzgyxVar2 = zzgyxVar;
                    i5 += 3;
                    i4 = 1048575;
                case 6:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        i8 = dub.f(i12 << 3, 4, i8);
                    }
                    ajVar = this;
                    zzgyxVar2 = zzgyxVar;
                    i5 += 3;
                    i4 = 1048575;
                case 7:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        i8 = dub.f(i12 << 3, 1, i8);
                    }
                    ajVar = this;
                    zzgyxVar2 = zzgyxVar;
                    i5 += 3;
                    i4 = 1048575;
                case 8:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        int i16 = i12 << 3;
                        Object object = unsafe.getObject(zzgyxVar2, j);
                        if (object instanceof zzgxp) {
                            zzD2 = zzgyc.zzD(i16);
                            zzd = ((zzgxp) object).zzd();
                            zzD3 = zzgyc.zzD(zzd);
                            i8 += zzD3 + zzd + zzD2;
                        } else {
                            zzD = zzgyc.zzD(i16);
                            zzE = zzgyc.zzC((String) object);
                            i8 += zzE + zzD;
                        }
                    }
                    ajVar = this;
                    i5 += 3;
                    i4 = 1048575;
                case 9:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        e2 = e.e(i12, unsafe.getObject(zzgyxVar2, j), ajVar.ax(i5));
                        i8 += e2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 10:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        zzgxp zzgxpVar = (zzgxp) unsafe.getObject(zzgyxVar2, j);
                        zzD2 = zzgyc.zzD(i12 << 3);
                        zzd = zzgxpVar.zzd();
                        zzD3 = zzgyc.zzD(zzd);
                        i8 += zzD3 + zzd + zzD2;
                    }
                    ajVar = this;
                    i5 += 3;
                    i4 = 1048575;
                case 11:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        i8 = dub.f(unsafe.getInt(zzgyxVar2, j), zzgyc.zzD(i12 << 3), i8);
                    }
                    ajVar = this;
                    i5 += 3;
                    i4 = 1048575;
                case 12:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        long j5 = unsafe.getInt(zzgyxVar2, j);
                        zzD = zzgyc.zzD(i12 << 3);
                        zzE = zzgyc.zzE(j5);
                        i8 += zzE + zzD;
                    }
                    ajVar = this;
                    i5 += 3;
                    i4 = 1048575;
                case 13:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        i8 = dub.f(i12 << 3, 4, i8);
                    }
                    ajVar = this;
                    zzgyxVar2 = zzgyxVar;
                    i5 += 3;
                    i4 = 1048575;
                case 14:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        i8 = dub.f(i12 << 3, 8, i8);
                    }
                    ajVar = this;
                    zzgyxVar2 = zzgyxVar;
                    i5 += 3;
                    i4 = 1048575;
                case 15:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        int i17 = unsafe.getInt(zzgyxVar2, j);
                        i8 = dub.f((i17 >> 31) ^ (i17 + i17), zzgyc.zzD(i12 << 3), i8);
                    }
                    ajVar = this;
                    i5 += 3;
                    i4 = 1048575;
                case 16:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        long j6 = unsafe.getLong(zzgyxVar2, j);
                        zzD = zzgyc.zzD(i12 << 3);
                        zzE = zzgyc.zzE((j6 >> 63) ^ (j6 + j6));
                        i8 += zzE + zzD;
                    }
                    ajVar = this;
                    i5 += 3;
                    i4 = 1048575;
                case 17:
                    if (ajVar.ap(zzgyxVar2, i5, i6, i7, i)) {
                        zzhai zzhaiVar = (zzhai) unsafe.getObject(zzgyxVar2, j);
                        g.ah ax = ajVar.ax(i5);
                        int zzD11 = zzgyc.zzD(i12 << 3);
                        i2 = zzD11 + zzD11;
                        bl = ((zzgwy) zzhaiVar).bl(ax);
                        e2 = bl + i2;
                        i8 += e2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 18:
                    e2 = e.j(i12, (List) unsafe.getObject(zzgyxVar2, j));
                    i8 += e2;
                    i5 += 3;
                    i4 = 1048575;
                case 19:
                    e2 = e.d(i12, (List) unsafe.getObject(zzgyxVar2, j));
                    i8 += e2;
                    i5 += 3;
                    i4 = 1048575;
                case 20:
                    List list = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar = e.f3952a;
                    if (list.size() != 0) {
                        zzD4 = (zzgyc.zzD(i12 << 3) * list.size()) + e.g(list);
                        i8 += zzD4;
                        i5 += 3;
                        i4 = 1048575;
                    }
                    zzD4 = 0;
                    i8 += zzD4;
                    i5 += 3;
                    i4 = 1048575;
                case 21:
                    List list2 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar2 = e.f3952a;
                    size = list2.size();
                    if (size != 0) {
                        r = e.r(list2);
                        zzD5 = zzgyc.zzD(i12 << 3);
                        zzD6 = (zzD5 * size) + r;
                        i8 += zzD6;
                        i5 += 3;
                        i4 = 1048575;
                    }
                    zzD6 = 0;
                    i8 += zzD6;
                    i5 += 3;
                    i4 = 1048575;
                case 22:
                    List list3 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar3 = e.f3952a;
                    size = list3.size();
                    if (size != 0) {
                        r = e.t(list3);
                        zzD5 = zzgyc.zzD(i12 << 3);
                        zzD6 = (zzD5 * size) + r;
                        i8 += zzD6;
                        i5 += 3;
                        i4 = 1048575;
                    }
                    zzD6 = 0;
                    i8 += zzD6;
                    i5 += 3;
                    i4 = 1048575;
                case 23:
                    e2 = e.j(i12, (List) unsafe.getObject(zzgyxVar2, j));
                    i8 += e2;
                    i5 += 3;
                    i4 = 1048575;
                case 24:
                    e2 = e.d(i12, (List) unsafe.getObject(zzgyxVar2, j));
                    i8 += e2;
                    i5 += 3;
                    i4 = 1048575;
                case 25:
                    List list4 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar4 = e.f3952a;
                    int size3 = list4.size();
                    if (size3 != 0) {
                        zzD4 = (zzgyc.zzD(i12 << 3) + 1) * size3;
                        i8 += zzD4;
                        i5 += 3;
                        i4 = 1048575;
                    }
                    zzD4 = 0;
                    i8 += zzD4;
                    i5 += 3;
                    i4 = 1048575;
                case 26:
                    List list5 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar5 = e.f3952a;
                    int size4 = list5.size();
                    if (size4 != 0) {
                        zzD6 = zzgyc.zzD(i12 << 3) * size4;
                        if (list5 instanceof zzgzu) {
                            zzgzu zzgzuVar = (zzgzu) list5;
                            for (int i18 = 0; i18 < size4; i18++) {
                                Object zzc = zzgzuVar.zzc();
                                if (zzc instanceof zzgxp) {
                                    int zzd2 = ((zzgxp) zzc).zzd();
                                    zzD6 = dub.f(zzd2, zzd2, zzD6);
                                } else {
                                    zzD6 = zzgyc.zzC((String) zzc) + zzD6;
                                }
                            }
                        } else {
                            for (int i19 = 0; i19 < size4; i19++) {
                                Object obj = list5.get(i19);
                                if (obj instanceof zzgxp) {
                                    int zzd3 = ((zzgxp) obj).zzd();
                                    zzD6 = dub.f(zzd3, zzd3, zzD6);
                                } else {
                                    zzD6 = zzgyc.zzC((String) obj) + zzD6;
                                }
                            }
                        }
                        i8 += zzD6;
                        i5 += 3;
                        i4 = 1048575;
                    }
                    zzD6 = 0;
                    i8 += zzD6;
                    i5 += 3;
                    i4 = 1048575;
                case 27:
                    List list6 = (List) unsafe.getObject(zzgyxVar2, j);
                    g.ah ax2 = ajVar.ax(i5);
                    i iVar6 = e.f3952a;
                    int size5 = list6.size();
                    if (size5 == 0) {
                        zzD7 = 0;
                    } else {
                        zzD7 = zzgyc.zzD(i12 << 3) * size5;
                        for (int i20 = 0; i20 < size5; i20++) {
                            Object obj2 = list6.get(i20);
                            if (obj2 instanceof zzgzt) {
                                int zza2 = ((zzgzt) obj2).zza();
                                zzD7 = dub.f(zza2, zza2, zzD7);
                            } else {
                                int bl2 = ((zzgwy) ((zzhai) obj2)).bl(ax2);
                                zzD7 = dub.f(bl2, bl2, zzD7);
                            }
                        }
                    }
                    i8 += zzD7;
                    i5 += 3;
                    i4 = 1048575;
                case 28:
                    List list7 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar7 = e.f3952a;
                    int size6 = list7.size();
                    if (size6 != 0) {
                        zzD6 = zzgyc.zzD(i12 << 3) * size6;
                        for (int i21 = 0; i21 < list7.size(); i21++) {
                            int zzd4 = ((zzgxp) list7.get(i21)).zzd();
                            zzD6 = dub.f(zzd4, zzd4, zzD6);
                        }
                        i8 += zzD6;
                        i5 += 3;
                        i4 = 1048575;
                    }
                    zzD6 = 0;
                    i8 += zzD6;
                    i5 += 3;
                    i4 = 1048575;
                case 29:
                    List list8 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar8 = e.f3952a;
                    size = list8.size();
                    if (size != 0) {
                        r = e.ad(list8);
                        zzD5 = zzgyc.zzD(i12 << 3);
                        zzD6 = (zzD5 * size) + r;
                        i8 += zzD6;
                        i5 += 3;
                        i4 = 1048575;
                    }
                    zzD6 = 0;
                    i8 += zzD6;
                    i5 += 3;
                    i4 = 1048575;
                case 30:
                    List list9 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar9 = e.f3952a;
                    size = list9.size();
                    if (size != 0) {
                        r = e.w(list9);
                        zzD5 = zzgyc.zzD(i12 << 3);
                        zzD6 = (zzD5 * size) + r;
                        i8 += zzD6;
                        i5 += 3;
                        i4 = 1048575;
                    }
                    zzD6 = 0;
                    i8 += zzD6;
                    i5 += 3;
                    i4 = 1048575;
                case 31:
                    e2 = e.d(i12, (List) unsafe.getObject(zzgyxVar2, j));
                    i8 += e2;
                    i5 += 3;
                    i4 = 1048575;
                case 32:
                    e2 = e.j(i12, (List) unsafe.getObject(zzgyxVar2, j));
                    i8 += e2;
                    i5 += 3;
                    i4 = 1048575;
                case 33:
                    List list10 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar10 = e.f3952a;
                    size = list10.size();
                    if (size != 0) {
                        r = e.s(list10);
                        zzD5 = zzgyc.zzD(i12 << 3);
                        zzD6 = (zzD5 * size) + r;
                        i8 += zzD6;
                        i5 += 3;
                        i4 = 1048575;
                    }
                    zzD6 = 0;
                    i8 += zzD6;
                    i5 += 3;
                    i4 = 1048575;
                case 34:
                    List list11 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar11 = e.f3952a;
                    size = list11.size();
                    if (size != 0) {
                        r = e.x(list11);
                        zzD5 = zzgyc.zzD(i12 << 3);
                        zzD6 = (zzD5 * size) + r;
                        i8 += zzD6;
                        i5 += 3;
                        i4 = 1048575;
                    }
                    zzD6 = 0;
                    i8 += zzD6;
                    i5 += 3;
                    i4 = 1048575;
                case 35:
                    List list12 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar12 = e.f3952a;
                    size2 = list12.size() * 8;
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 36:
                    List list13 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar13 = e.f3952a;
                    size2 = list13.size() * 4;
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 37:
                    size2 = e.g((List) unsafe.getObject(zzgyxVar2, j));
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 38:
                    size2 = e.r((List) unsafe.getObject(zzgyxVar2, j));
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 39:
                    size2 = e.t((List) unsafe.getObject(zzgyxVar2, j));
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 40:
                    List list14 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar14 = e.f3952a;
                    size2 = list14.size() * 8;
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 41:
                    List list15 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar15 = e.f3952a;
                    size2 = list15.size() * 4;
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 42:
                    List list16 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar16 = e.f3952a;
                    size2 = list16.size();
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 43:
                    size2 = e.ad((List) unsafe.getObject(zzgyxVar2, j));
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 44:
                    size2 = e.w((List) unsafe.getObject(zzgyxVar2, j));
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 45:
                    List list17 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar17 = e.f3952a;
                    size2 = list17.size() * 4;
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 46:
                    List list18 = (List) unsafe.getObject(zzgyxVar2, j);
                    i iVar18 = e.f3952a;
                    size2 = list18.size() * 8;
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 47:
                    size2 = e.s((List) unsafe.getObject(zzgyxVar2, j));
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 48:
                    size2 = e.x((List) unsafe.getObject(zzgyxVar2, j));
                    if (size2 > 0) {
                        zzD8 = zzgyc.zzD(i12 << 3);
                        zzD9 = zzgyc.zzD(size2);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 49:
                    List list19 = (List) unsafe.getObject(zzgyxVar2, j);
                    g.ah ax3 = ajVar.ax(i5);
                    i iVar19 = e.f3952a;
                    int size7 = list19.size();
                    if (size7 == 0) {
                        i3 = 0;
                    } else {
                        i3 = 0;
                        for (int i22 = 0; i22 < size7; i22++) {
                            zzhai zzhaiVar2 = (zzhai) list19.get(i22);
                            int zzD12 = zzgyc.zzD(i12 << 3);
                            i3 += ((zzgwy) zzhaiVar2).bl(ax3) + zzD12 + zzD12;
                        }
                    }
                    i8 += i3;
                    i5 += 3;
                    i4 = 1048575;
                case 50:
                    zzhac zzhacVar = (zzhac) unsafe.getObject(zzgyxVar2, j);
                    if (zzhacVar.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = zzhacVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry2 = (Map.Entry) it.next();
                            entry2.getKey();
                            entry2.getValue();
                            throw null;
                        }
                    }
                    i5 += 3;
                    i4 = 1048575;
                case 51:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        i8 = dub.f(i12 << 3, 8, i8);
                    }
                    i5 += 3;
                    i4 = 1048575;
                case 52:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        i8 = dub.f(i12 << 3, 4, i8);
                    }
                    i5 += 3;
                    i4 = 1048575;
                case 53:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        long x = x(j, zzgyxVar2);
                        zzD10 = zzgyc.zzD(i12 << 3);
                        zzE2 = zzgyc.zzE(x);
                        i8 += zzE2 + zzD10;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 54:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        long x2 = x(j, zzgyxVar2);
                        zzD10 = zzgyc.zzD(i12 << 3);
                        zzE2 = zzgyc.zzE(x2);
                        i8 += zzE2 + zzD10;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 55:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        long aa = aa(j, zzgyxVar2);
                        zzD10 = zzgyc.zzD(i12 << 3);
                        zzE2 = zzgyc.zzE(aa);
                        i8 += zzE2 + zzD10;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 56:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        i8 = dub.f(i12 << 3, 8, i8);
                    }
                    i5 += 3;
                    i4 = 1048575;
                case 57:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        i8 = dub.f(i12 << 3, 4, i8);
                    }
                    i5 += 3;
                    i4 = 1048575;
                case 58:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        i8 = dub.f(i12 << 3, 1, i8);
                    }
                    i5 += 3;
                    i4 = 1048575;
                case 59:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        int i23 = i12 << 3;
                        Object object2 = unsafe.getObject(zzgyxVar2, j);
                        if (object2 instanceof zzgxp) {
                            size2 = zzgyc.zzD(i23);
                            zzD8 = ((zzgxp) object2).zzd();
                            zzD9 = zzgyc.zzD(zzD8);
                            i8 += zzD9 + zzD8 + size2;
                            i5 += 3;
                            i4 = 1048575;
                        } else {
                            zzD10 = zzgyc.zzD(i23);
                            zzE2 = zzgyc.zzC((String) object2);
                            i8 += zzE2 + zzD10;
                            i5 += 3;
                            i4 = 1048575;
                        }
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 60:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        e2 = e.e(i12, unsafe.getObject(zzgyxVar2, j), ajVar.ax(i5));
                        i8 += e2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 61:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        zzgxp zzgxpVar2 = (zzgxp) unsafe.getObject(zzgyxVar2, j);
                        size2 = zzgyc.zzD(i12 << 3);
                        zzD8 = zzgxpVar2.zzd();
                        zzD9 = zzgyc.zzD(zzD8);
                        i8 += zzD9 + zzD8 + size2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 62:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        i8 = dub.f(aa(j, zzgyxVar2), zzgyc.zzD(i12 << 3), i8);
                    }
                    i5 += 3;
                    i4 = 1048575;
                case 63:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        long aa2 = aa(j, zzgyxVar2);
                        zzD10 = zzgyc.zzD(i12 << 3);
                        zzE2 = zzgyc.zzE(aa2);
                        i8 += zzE2 + zzD10;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 64:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        i8 = dub.f(i12 << 3, 4, i8);
                    }
                    i5 += 3;
                    i4 = 1048575;
                case 65:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        i8 = dub.f(i12 << 3, 8, i8);
                    }
                    i5 += 3;
                    i4 = 1048575;
                case 66:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        int aa3 = aa(j, zzgyxVar2);
                        i8 = dub.f((aa3 >> 31) ^ (aa3 + aa3), zzgyc.zzD(i12 << 3), i8);
                    }
                    i5 += 3;
                    i4 = 1048575;
                case 67:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        long x3 = x(j, zzgyxVar2);
                        zzD10 = zzgyc.zzD(i12 << 3);
                        zzE2 = zzgyc.zzE((x3 >> 63) ^ (x3 + x3));
                        i8 += zzE2 + zzD10;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                case 68:
                    if (ajVar.aj(i12, i5, zzgyxVar2)) {
                        zzhai zzhaiVar3 = (zzhai) unsafe.getObject(zzgyxVar2, j);
                        g.ah ax4 = ajVar.ax(i5);
                        int zzD13 = zzgyc.zzD(i12 << 3);
                        i2 = zzD13 + zzD13;
                        bl = ((zzgwy) zzhaiVar3).bl(ax4);
                        e2 = bl + i2;
                        i8 += e2;
                        i5 += 3;
                        i4 = 1048575;
                    } else {
                        i5 += 3;
                        i4 = 1048575;
                    }
                default:
                    i5 += 3;
                    i4 = 1048575;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.ah
    public final void k(Object obj, Object obj2) {
        Object obj3;
        ab(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.q;
            if (i >= iArr.length) {
                Object obj4 = obj;
                e.m(obj4, obj2);
                if (!this.r || ((zzgyt) obj2).zza.f13668b.isEmpty()) {
                    return;
                }
                throw null;
            }
            int aw = aw(i);
            int i2 = 1048575 & aw;
            int ad = ad(aw);
            int i3 = iArr[i];
            long j = i2;
            switch (ad) {
                case 0:
                    if (ao(i, obj2)) {
                        aul aulVar = gbc.f17849g;
                        obj3 = obj;
                        aulVar.n(obj3, j, aulVar.p(j, obj2));
                        au(i, obj3);
                        break;
                    }
                    obj3 = obj;
                    break;
                case 1:
                    if (ao(i, obj2)) {
                        aul aulVar2 = gbc.f17849g;
                        aulVar2.j(obj, j, aulVar2.k(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (ao(i, obj2)) {
                        gbc.l(obj, j, gbc.i(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (ao(i, obj2)) {
                        gbc.l(obj, j, gbc.i(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (ao(i, obj2)) {
                        gbc.s(obj, j, gbc.q(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (ao(i, obj2)) {
                        gbc.l(obj, j, gbc.i(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (ao(i, obj2)) {
                        gbc.s(obj, j, gbc.q(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (ao(i, obj2)) {
                        aul aulVar3 = gbc.f17849g;
                        aulVar3.o(obj, j, aulVar3.m(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (ao(i, obj2)) {
                        gbc.k(j, obj, gbc.v(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 9:
                    ak(obj, i, obj2);
                    obj3 = obj;
                    break;
                case 10:
                    if (ao(i, obj2)) {
                        gbc.k(j, obj, gbc.v(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 11:
                    if (ao(i, obj2)) {
                        gbc.s(obj, j, gbc.q(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (ao(i, obj2)) {
                        gbc.s(obj, j, gbc.q(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (ao(i, obj2)) {
                        gbc.s(obj, j, gbc.q(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (ao(i, obj2)) {
                        gbc.l(obj, j, gbc.i(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (ao(i, obj2)) {
                        gbc.s(obj, j, gbc.q(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 16:
                    if (ao(i, obj2)) {
                        gbc.l(obj, j, gbc.i(j, obj2));
                        au(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    ak(obj, i, obj2);
                    obj3 = obj;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzgzj zzgzjVar = (zzgzj) gbc.v(j, obj);
                    zzgzj zzgzjVar2 = (zzgzj) gbc.v(j, obj2);
                    int size = zzgzjVar.size();
                    int size2 = zzgzjVar2.size();
                    if (size > 0 && size2 > 0) {
                        if (!zzgzjVar.zzc()) {
                            zzgzjVar = zzgzjVar.zzf(size2 + size);
                        }
                        zzgzjVar.addAll(zzgzjVar2);
                    }
                    if (size > 0) {
                        zzgzjVar2 = zzgzjVar;
                    }
                    gbc.k(j, obj, zzgzjVar2);
                    obj3 = obj;
                    break;
                case 50:
                    i iVar = e.f3952a;
                    gbc.k(j, obj, fbc.q(gbc.v(j, obj), gbc.v(j, obj2)));
                    obj3 = obj;
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (aj(i3, i, obj2)) {
                        gbc.k(j, obj, gbc.v(j, obj2));
                        ay(i3, i, obj);
                    }
                    obj3 = obj;
                    break;
                case 60:
                    ai(obj, i, obj2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (aj(i3, i, obj2)) {
                        gbc.k(j, obj, gbc.v(j, obj2));
                        ay(i3, i, obj);
                    }
                    obj3 = obj;
                    break;
                case 68:
                    ai(obj, i, obj2);
                    obj3 = obj;
                    break;
                default:
                    obj3 = obj;
                    break;
            }
            i += 3;
            obj = obj3;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type update terminated with stack overflow, arg: (r6v1 java.lang.Object), method size: 1990
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // g.ah
    public final void l(java.lang.Object r22, g.hj r23, com.google.android.gms.internal.ads.zzgyh r24) {
        /*
            Method dump skipped, instructions count: 1990
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aj.l(java.lang.Object, g.hj, com.google.android.gms.internal.ads.zzgyh):void");
    }

    @Override // g.ah
    public final Object zze() {
        return ((zzgyx) this.p).cm();
    }
}
