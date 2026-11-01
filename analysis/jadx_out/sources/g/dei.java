package g;

import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public final class dei implements dxm {

    /* renamed from: c, reason: collision with root package name */
    public final int f14052c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14053d;

    /* renamed from: e, reason: collision with root package name */
    public final bsv f14054e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f14055f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f14056g;
    public final cuf h;
    public final Object[] i;
    public final int j;
    public final int k;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f14051b = new int[0];

    /* renamed from: a, reason: collision with root package name */
    public static final Unsafe f14050a = euh.s();

    public dei(int[] iArr, Object[] objArr, int i, int i2, bsv bsvVar, int[] iArr2, int i3, int i4, cuf cufVar, gpu gpuVar) {
        this.f14055f = iArr;
        this.i = objArr;
        this.j = i;
        this.f14053d = i2;
        this.f14056g = iArr2;
        this.k = i3;
        this.f14052c = i4;
        this.h = cufVar;
        this.f14054e = bsvVar;
    }

    public static long l(long j, Object obj) {
        return ((Long) euh.h(j, obj)).longValue();
    }

    public static int m(long j, Object obj) {
        return ((Integer) euh.h(j, obj)).intValue();
    }

    public static Field n(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e2) {
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
            throw new RuntimeException(o.toString(), e2);
        }
    }

    public static int o(int i) {
        return (i >>> 20) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
    }

    public static boolean p(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof fsu) {
            return ((fsu) obj).v();
        }
        return true;
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
    public static dei q(hcu hcuVar, cuf cufVar, gpu gpuVar) {
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
        Field n;
        char charAt10;
        int i25;
        int i26;
        int i27;
        int i28;
        Object obj;
        Field n2;
        Object obj2;
        Field n3;
        int i29;
        char charAt11;
        int i30;
        char charAt12;
        int i31;
        char charAt13;
        int i32;
        char charAt14;
        if (!(hcuVar instanceof hcu)) {
            hcuVar.getClass();
            throw new ClassCastException();
        }
        String str = hcuVar.f19235c;
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
            iArr = f14051b;
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
        Unsafe unsafe = f14050a;
        Object[] objArr2 = hcuVar.f19236d;
        Class<?> cls2 = hcuVar.f19234b.getClass();
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
                        if (hcuVar.e() == 1 || i79 != 0) {
                            i27 = i6 + 1;
                            int i88 = i69 / 3;
                            objArr3[i88 + i88 + 1] = objArr4[i6];
                        } else {
                            i28 = 0;
                            int i89 = i86 + i86;
                            int i90 = i28;
                            obj = objArr4[i89];
                            if (obj instanceof Field) {
                                n2 = (Field) obj;
                            } else {
                                n2 = n(cls2, (String) obj);
                                objArr4[i89] = n2;
                            }
                            int objectFieldOffset2 = (int) unsafe.objectFieldOffset(n2);
                            int i91 = i89 + 1;
                            obj2 = objArr4[i91];
                            if (obj2 instanceof Field) {
                                n3 = (Field) obj2;
                            } else {
                                n3 = n(cls2, (String) obj2);
                                objArr4[i91] = n3;
                            }
                            int objectFieldOffset3 = (int) unsafe.objectFieldOffset(n3);
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
                    int objectFieldOffset22 = (int) unsafe.objectFieldOffset(n2);
                    int i912 = i892 + 1;
                    obj2 = objArr4[i912];
                    if (obj2 instanceof Field) {
                    }
                    int objectFieldOffset32 = (int) unsafe.objectFieldOffset(n3);
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
                int objectFieldOffset222 = (int) unsafe.objectFieldOffset(n2);
                int i9122 = i8922 + 1;
                obj2 = objArr4[i9122];
                if (obj2 instanceof Field) {
                }
                int objectFieldOffset322 = (int) unsafe.objectFieldOffset(n3);
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
                Field n4 = n(cls2, (String) objArr4[i6]);
                objArr = objArr3;
                if (i77 == 9 || i77 == 17) {
                    i18 = i2;
                    int i93 = i69 / 3;
                    objArr[i93 + i93 + 1] = n4.getType();
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
                            if (hcuVar.e() == 1 || i79 != 0) {
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
                        objectFieldOffset = (int) unsafe.objectFieldOffset(n4);
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
                                n = (Field) obj3;
                            } else {
                                n = n(cls, (String) obj3);
                                objArr4[i102] = n;
                            }
                            i19 = (int) unsafe.objectFieldOffset(n);
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
                    objectFieldOffset = (int) unsafe.objectFieldOffset(n4);
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
                objectFieldOffset = (int) unsafe.objectFieldOffset(n4);
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
        return new dei(iArr2, objArr3, i3, i5, hcuVar.f19234b, iArr, i7, i64, cufVar, gpuVar);
    }

    @Override // g.dxm
    public final void aa(Object obj) {
        if (!p(obj)) {
            return;
        }
        if (obj instanceof fsu) {
            fsu fsuVar = (fsu) obj;
            fsuVar.s();
            fsuVar.zza = 0;
            fsuVar.w();
        }
        int i = 0;
        while (true) {
            int[] iArr = this.f14055f;
            if (i >= iArr.length) {
                this.h.getClass();
                wl wlVar = ((fsu) obj).zzc;
                if (wlVar.f20223c) {
                    wlVar.f20223c = false;
                    return;
                }
                return;
            }
            int am = am(i);
            int i2 = 1048575 & am;
            int o = o(am);
            long j = i2;
            if (o != 9) {
                if (o != 60 && o != 68) {
                    switch (o) {
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
                            bxh bxhVar = (bxh) ((gmb) euh.h(j, obj));
                            if (!bxhVar.f12380e) {
                                break;
                            } else {
                                bxhVar.f12380e = false;
                                break;
                            }
                        case 50:
                            Unsafe unsafe = f14050a;
                            Object object = unsafe.getObject(obj, j);
                            if (object == null) {
                                break;
                            } else {
                                ((ou) object).c();
                                unsafe.putObject(obj, j, object);
                                break;
                            }
                    }
                } else if (ao(iArr[i], i, obj)) {
                    ak(i).aa(f14050a.getObject(obj, j));
                }
                i += 3;
            }
            if (u(i, obj)) {
                ak(i).aa(f14050a.getObject(obj, j));
            }
            i += 3;
        }
    }

    public final Object ab(int i, int i2, Object obj) {
        dxm ak = ak(i2);
        if (!ao(i, i2, obj)) {
            return ak.zze();
        }
        Object object = f14050a.getObject(obj, am(i2) & 1048575);
        if (p(object)) {
            return object;
        }
        fsu zze = ak.zze();
        if (object != null) {
            ak.al(zze, object);
        }
        return zze;
    }

    public final int ac(int i, int i2) {
        int[] iArr = this.f14055f;
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

    @Override // g.dxm
    public final void ad(Object obj, dnb dnbVar) {
        int i;
        int i2;
        dei deiVar = this;
        Unsafe unsafe = f14050a;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 1048575;
        int i6 = 0;
        while (true) {
            int[] iArr = deiVar.f14055f;
            if (i4 >= iArr.length) {
                ((fsu) obj).zzc.h(dnbVar);
                return;
            }
            int am = deiVar.am(i4);
            int o = o(am);
            int i7 = iArr[i4];
            if (o <= 17) {
                int i8 = iArr[i4 + 2];
                int i9 = i8 & i3;
                if (i9 != i5) {
                    i6 = i9 == i3 ? 0 : unsafe.getInt(obj, i9);
                    i5 = i9;
                }
                i = 1 << (i8 >>> 20);
            } else {
                i = 0;
            }
            long j = am & i3;
            switch (o) {
                case 0:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).v(i7, Double.doubleToRawLongBits(euh.f16177f.g(j, obj)));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).n(i7, Float.floatToRawIntBits(euh.f16177f.c(j, obj)));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).l(i7, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).l(i7, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).p(i7, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).v(i7, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).n(i7, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        byte b2 = euh.f16177f.b(j, obj);
                        ctv ctvVar = (ctv) dnbVar.f14452a;
                        ctvVar.s(i7 << 3);
                        int i10 = ctvVar.f13499e;
                        try {
                            int i11 = i10 + 1;
                            try {
                                ctvVar.f13497c[i10] = b2;
                                ctvVar.f13499e = i11;
                                break;
                            } catch (IndexOutOfBoundsException e2) {
                                e = e2;
                                i10 = i11;
                                throw new gng(i10, ctvVar.f13498d, 1, e);
                            }
                        } catch (IndexOutOfBoundsException e3) {
                            e = e3;
                        }
                    } else {
                        continue;
                    }
                case 8:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof String) {
                            ((ctv) dnbVar.f14452a).o(i7, (String) object);
                            break;
                        } else {
                            ((ctv) dnbVar.f14452a).t(i7, (aki) object);
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        dnbVar.b(i7, unsafe.getObject(obj, j), deiVar.ak(i4));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).t(i7, (aki) unsafe.getObject(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).u(i7, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).p(i7, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).n(i7, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        ((ctv) dnbVar.f14452a).v(i7, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        int i12 = unsafe.getInt(obj, j);
                        ((ctv) dnbVar.f14452a).u(i7, (i12 >> 31) ^ (i12 + i12));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        long j2 = unsafe.getLong(obj, j);
                        ((ctv) dnbVar.f14452a).l(i7, (j2 >> 63) ^ (j2 + j2));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (deiVar.af(obj, i4, i5, i6, i)) {
                        dnbVar.d(i7, unsafe.getObject(obj, j), deiVar.ak(i4));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    gog.aa(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 19:
                    gog.m(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 20:
                    gog.y(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 21:
                    gog.h(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 22:
                    gog.n(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 23:
                    gog.l(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 24:
                    gog.w(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 25:
                    gog.v(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 26:
                    int i13 = iArr[i4];
                    List list = (List) unsafe.getObject(obj, j);
                    cuf cufVar = gog.f18487a;
                    if (list != null && !list.isEmpty()) {
                        dnbVar.getClass();
                        for (int i14 = 0; i14 < list.size(); i14++) {
                            ((ctv) dnbVar.f14452a).o(i13, (String) list.get(i14));
                        }
                        break;
                    }
                    break;
                case 27:
                    int i15 = iArr[i4];
                    List list2 = (List) unsafe.getObject(obj, j);
                    dxm ak = deiVar.ak(i4);
                    cuf cufVar2 = gog.f18487a;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i16 = 0; i16 < list2.size(); i16++) {
                            dnbVar.b(i15, list2.get(i16), ak);
                        }
                        break;
                    }
                    break;
                case 28:
                    int i17 = iArr[i4];
                    List list3 = (List) unsafe.getObject(obj, j);
                    cuf cufVar3 = gog.f18487a;
                    if (list3 != null && !list3.isEmpty()) {
                        dnbVar.getClass();
                        for (int i18 = 0; i18 < list3.size(); i18++) {
                            ((ctv) dnbVar.f14452a).t(i17, (aki) list3.get(i18));
                        }
                        break;
                    }
                    break;
                case 29:
                    gog.x(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 30:
                    gog.p(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 31:
                    gog.f(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 32:
                    gog.b(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 33:
                    gog.k(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 34:
                    gog.t(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, false);
                    break;
                case 35:
                    gog.aa(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 36:
                    gog.m(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 37:
                    gog.y(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 38:
                    gog.h(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 39:
                    gog.n(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 40:
                    gog.l(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 41:
                    gog.w(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 42:
                    gog.v(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 43:
                    gog.x(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 44:
                    gog.p(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 45:
                    gog.f(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 46:
                    gog.b(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 47:
                    gog.k(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 48:
                    gog.t(iArr[i4], (List) unsafe.getObject(obj, j), dnbVar, true);
                    break;
                case 49:
                    int i19 = iArr[i4];
                    List list4 = (List) unsafe.getObject(obj, j);
                    dxm ak2 = deiVar.ak(i4);
                    cuf cufVar4 = gog.f18487a;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i20 = 0; i20 < list4.size(); i20++) {
                            dnbVar.d(i19, list4.get(i20), ak2);
                        }
                        break;
                    }
                    break;
                case 50:
                    if (unsafe.getObject(obj, j) != null) {
                        int i21 = i4 / 3;
                        throw awf.j(deiVar.i[i21 + i21]);
                    }
                    break;
                case 51:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).v(i7, Double.doubleToRawLongBits(((Double) euh.h(j, obj)).doubleValue()));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).n(i7, Float.floatToRawIntBits(((Float) euh.h(j, obj)).floatValue()));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).l(i7, l(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).l(i7, l(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).p(i7, m(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).v(i7, l(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).n(i7, m(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (deiVar.ao(i7, i4, obj)) {
                        byte booleanValue = ((Boolean) euh.h(j, obj)).booleanValue();
                        ctv ctvVar2 = (ctv) dnbVar.f14452a;
                        ctvVar2.s(i7 << 3);
                        int i22 = ctvVar2.f13499e;
                        try {
                            i2 = i22 + 1;
                        } catch (IndexOutOfBoundsException e4) {
                            e = e4;
                        }
                        try {
                            ctvVar2.f13497c[i22] = booleanValue;
                            ctvVar2.f13499e = i2;
                            break;
                        } catch (IndexOutOfBoundsException e5) {
                            e = e5;
                            i22 = i2;
                            throw new gng(i22, ctvVar2.f13498d, 1, e);
                        }
                    } else {
                        continue;
                    }
                case 59:
                    if (deiVar.ao(i7, i4, obj)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof String) {
                            ((ctv) dnbVar.f14452a).o(i7, (String) object2);
                            break;
                        } else {
                            ((ctv) dnbVar.f14452a).t(i7, (aki) object2);
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (deiVar.ao(i7, i4, obj)) {
                        dnbVar.b(i7, unsafe.getObject(obj, j), deiVar.ak(i4));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).t(i7, (aki) unsafe.getObject(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).u(i7, m(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).p(i7, m(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).n(i7, m(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (deiVar.ao(i7, i4, obj)) {
                        ((ctv) dnbVar.f14452a).v(i7, l(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (deiVar.ao(i7, i4, obj)) {
                        int m = m(j, obj);
                        ((ctv) dnbVar.f14452a).u(i7, (m >> 31) ^ (m + m));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (deiVar.ao(i7, i4, obj)) {
                        long l = l(j, obj);
                        ((ctv) dnbVar.f14452a).l(i7, (l >> 63) ^ (l + l));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (deiVar.ao(i7, i4, obj)) {
                        dnbVar.d(i7, unsafe.getObject(obj, j), deiVar.ak(i4));
                        break;
                    } else {
                        break;
                    }
            }
            i4 += 3;
            i3 = 1048575;
            deiVar = this;
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public final int ae(java.lang.Object r38, byte[] r39, int r40, int r41, int r42, g.dsc r43) {
        /*
            Method dump skipped, instructions count: 3898
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g.dei.ae(java.lang.Object, byte[], int, int, int, g.dsc):int");
    }

    public final boolean af(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? u(i, obj) : (i3 & i4) != 0;
    }

    public final void ag(Object obj, int i, Object obj2, int i2) {
        f14050a.putObject(obj, am(i2) & 1048575, obj2);
        euh.u(obj, this.f14055f[i2 + 2] & 1048575, i);
    }

    public final void ah(Object obj, int i, Object obj2) {
        if (u(i, obj2)) {
            int am = am(i) & 1048575;
            Unsafe unsafe = f14050a;
            long j = am;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f14055f[i] + " is present but null: " + obj2.toString());
            }
            dxm ak = ak(i);
            if (!u(i, obj)) {
                if (p(object)) {
                    fsu zze = ak.zze();
                    ak.al(zze, object);
                    unsafe.putObject(obj, j, zze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                t(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!p(object2)) {
                fsu zze2 = ak.zze();
                ak.al(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            ak.al(object2, object);
        }
    }

    @Override // g.dxm
    public final boolean ai(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < this.k) {
            int i7 = this.f14056g[i6];
            int[] iArr = this.f14055f;
            int i8 = iArr[i7];
            int am = am(i7);
            int i9 = iArr[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i4) {
                if (i10 != 1048575) {
                    i5 = f14050a.getInt(obj, i10);
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
            if ((268435456 & am) == 0 || af(obj, i2, i, i3, i11)) {
                int o = o(am);
                if (o == 9 || o == 17) {
                    if (af(obj, i2, i, i3, i11) && !ak(i2).ai(euh.h(am & 1048575, obj))) {
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                } else {
                    if (o != 27) {
                        if (o == 60 || o == 68) {
                            if (ao(i8, i2, obj) && !ak(i2).ai(euh.h(am & 1048575, obj))) {
                            }
                        } else if (o != 49) {
                            if (o == 50 && !((ou) euh.h(am & 1048575, obj)).isEmpty()) {
                                int i13 = i2 / 3;
                                throw awf.j(this.i[i13 + i13]);
                            }
                        }
                        i6++;
                        i4 = i;
                        i5 = i3;
                    }
                    List list = (List) euh.h(am & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        dxm ak = ak(i2);
                        for (int i14 = 0; i14 < list.size(); i14++) {
                            if (ak.ai(list.get(i14))) {
                            }
                        }
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                }
            }
            return false;
        }
        return true;
    }

    public final void aj(Object obj, int i, Object obj2) {
        int[] iArr = this.f14055f;
        int i2 = iArr[i];
        if (ao(i2, i, obj2)) {
            int am = am(i) & 1048575;
            Unsafe unsafe = f14050a;
            long j = am;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2.toString());
            }
            dxm ak = ak(i);
            if (!ao(i2, i, obj)) {
                if (p(object)) {
                    fsu zze = ak.zze();
                    ak.al(zze, object);
                    unsafe.putObject(obj, j, zze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                euh.u(obj, iArr[i + 2] & 1048575, i2);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!p(object2)) {
                fsu zze2 = ak.zze();
                ak.al(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            ak.al(object2, object);
        }
    }

    public final dxm ak(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.i;
        dxm dxmVar = (dxm) objArr[i3];
        if (dxmVar != null) {
            return dxmVar;
        }
        dxm d2 = fjo.f16893a.d((Class) objArr[i3 + 1]);
        objArr[i3] = d2;
        return d2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.dxm
    public final void al(Object obj, Object obj2) {
        Object obj3;
        if (!p(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.f14055f;
            if (i >= iArr.length) {
                gog.q(obj, obj2);
                return;
            }
            int am = am(i);
            int i2 = am & 1048575;
            int o = o(am);
            int i3 = iArr[i];
            long j = i2;
            switch (o) {
                case 0:
                    if (u(i, obj2)) {
                        aul aulVar = euh.f16177f;
                        obj3 = obj;
                        aulVar.f(obj3, j, aulVar.g(j, obj2));
                        t(i, obj3);
                        break;
                    }
                    obj3 = obj;
                    break;
                case 1:
                    if (u(i, obj2)) {
                        aul aulVar2 = euh.f16177f;
                        aulVar2.d(obj, j, aulVar2.c(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 2:
                    if (u(i, obj2)) {
                        euh.i(obj, j, euh.p(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 3:
                    if (u(i, obj2)) {
                        euh.i(obj, j, euh.p(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 4:
                    if (u(i, obj2)) {
                        euh.u(obj, j, euh.n(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 5:
                    if (u(i, obj2)) {
                        euh.i(obj, j, euh.p(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 6:
                    if (u(i, obj2)) {
                        euh.u(obj, j, euh.n(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 7:
                    if (u(i, obj2)) {
                        aul aulVar3 = euh.f16177f;
                        aulVar3.e(obj, j, aulVar3.b(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 8:
                    if (u(i, obj2)) {
                        euh.m(j, obj, euh.h(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 9:
                    ah(obj, i, obj2);
                    obj3 = obj;
                    break;
                case 10:
                    if (u(i, obj2)) {
                        euh.m(j, obj, euh.h(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 11:
                    if (u(i, obj2)) {
                        euh.u(obj, j, euh.n(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 12:
                    if (u(i, obj2)) {
                        euh.u(obj, j, euh.n(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 13:
                    if (u(i, obj2)) {
                        euh.u(obj, j, euh.n(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 14:
                    if (u(i, obj2)) {
                        euh.i(obj, j, euh.p(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 15:
                    if (u(i, obj2)) {
                        euh.u(obj, j, euh.n(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 16:
                    if (u(i, obj2)) {
                        euh.i(obj, j, euh.p(j, obj2));
                        t(i, obj);
                    }
                    obj3 = obj;
                    break;
                case 17:
                    ah(obj, i, obj2);
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
                    gmb gmbVar = (gmb) euh.h(j, obj);
                    gmb gmbVar2 = (gmb) euh.h(j, obj2);
                    int size = gmbVar.size();
                    int size2 = gmbVar2.size();
                    if (size > 0 && size2 > 0) {
                        if (!((bxh) gmbVar).f12380e) {
                            gmbVar = gmbVar.zzd(size2 + size);
                        }
                        gmbVar.addAll(gmbVar2);
                    }
                    if (size > 0) {
                        gmbVar2 = gmbVar;
                    }
                    euh.m(j, obj, gmbVar2);
                    obj3 = obj;
                    break;
                case 50:
                    cuf cufVar = gog.f18487a;
                    euh.m(j, obj, fbc.t(euh.h(j, obj), euh.h(j, obj2)));
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
                    if (ao(i3, i, obj2)) {
                        euh.m(j, obj, euh.h(j, obj2));
                        euh.u(obj, iArr[i + 2] & 1048575, i3);
                    }
                    obj3 = obj;
                    break;
                case 60:
                    aj(obj, i, obj2);
                    obj3 = obj;
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (ao(i3, i, obj2)) {
                        euh.m(j, obj, euh.h(j, obj2));
                        euh.u(obj, iArr[i + 2] & 1048575, i3);
                    }
                    obj3 = obj;
                    break;
                case 68:
                    aj(obj, i, obj2);
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

    public final int am(int i) {
        return this.f14055f[i + 1];
    }

    @Override // g.dxm
    public final int an(bsv bsvVar) {
        int i;
        int i2;
        int h;
        int i3;
        int g2;
        int i4;
        int k;
        int i5;
        int i6;
        int i7;
        int i8;
        int k2;
        int i9;
        int size;
        int g3;
        int i10;
        int i11;
        int i12;
        int size2;
        int i13;
        int i14;
        int i15;
        int h2;
        int i16;
        int g4;
        int m;
        int i17;
        dei deiVar = this;
        bsv bsvVar2 = bsvVar;
        Unsafe unsafe = f14050a;
        int i18 = 1048575;
        int i19 = 0;
        int i20 = 1048575;
        int i21 = 0;
        int i22 = 0;
        while (true) {
            int[] iArr = deiVar.f14055f;
            if (i19 >= iArr.length) {
                return ((fsu) bsvVar).zzc.j() + i22;
            }
            int am = deiVar.am(i19);
            int o = o(am);
            int i23 = iArr[i19];
            int i24 = iArr[i19 + 2];
            int i25 = i24 & i18;
            if (o <= 17) {
                if (i25 != i20) {
                    i21 = i25 == i18 ? 0 : unsafe.getInt(bsvVar2, i25);
                    i20 = i25;
                }
                i = 1 << (i24 >>> 20);
            } else {
                i = 0;
            }
            int i26 = am & i18;
            if (o >= mj.zzJ.zza()) {
                mj.zzW.getClass();
            }
            long j = i26;
            switch (o) {
                case 0:
                    if (!deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 8, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 1:
                    if (!deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 4, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 2:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        long j2 = unsafe.getLong(bsvVar2, j);
                        i2 = ctv.i(i23 << 3);
                        h = ctv.h(j2);
                        i7 = h + i2;
                        i22 += i7;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 3:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        long j3 = unsafe.getLong(bsvVar2, j);
                        i2 = ctv.i(i23 << 3);
                        h = ctv.h(j3);
                        i7 = h + i2;
                        i22 += i7;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 4:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        long j4 = unsafe.getInt(bsvVar2, j);
                        i2 = ctv.i(i23 << 3);
                        h = ctv.h(j4);
                        i7 = h + i2;
                        i22 += i7;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 5:
                    if (!deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 8, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 6:
                    if (!deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 4, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 7:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        i22 = dub.h(i23 << 3, 1, i22);
                    }
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 8:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        int i27 = i23 << 3;
                        Object object = unsafe.getObject(bsvVar2, j);
                        if (object instanceof aki) {
                            i3 = ctv.i(i27);
                            g2 = ((aki) object).g();
                            i22 = dub.l(g2, g2, i3, i22);
                            i19 += 3;
                            deiVar = this;
                            bsvVar2 = bsvVar;
                            i18 = 1048575;
                        } else {
                            i2 = ctv.i(i27);
                            h = ctv.g((String) object);
                            i7 = h + i2;
                            i22 += i7;
                            i19 += 3;
                            deiVar = this;
                            bsvVar2 = bsvVar;
                            i18 = 1048575;
                        }
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 9:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        Object object2 = unsafe.getObject(bsvVar2, j);
                        dxm ak = deiVar.ak(i19);
                        cuf cufVar = gog.f18487a;
                        i4 = ctv.i(i23 << 3);
                        k = ((bsv) object2).k(ak);
                        i22 = dub.l(k, k, i4, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 10:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        aki akiVar = (aki) unsafe.getObject(bsvVar2, j);
                        i3 = ctv.i(i23 << 3);
                        g2 = akiVar.g();
                        i22 = dub.l(g2, g2, i3, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 11:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        i5 = unsafe.getInt(bsvVar2, j);
                        i6 = ctv.i(i23 << 3);
                        i22 = dub.h(i5, i6, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 12:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        long j5 = unsafe.getInt(bsvVar2, j);
                        i2 = ctv.i(i23 << 3);
                        h = ctv.h(j5);
                        i7 = h + i2;
                        i22 += i7;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 13:
                    if (!deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 4, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 14:
                    if (!deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 8, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 15:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        int i28 = unsafe.getInt(bsvVar2, j);
                        i6 = ctv.i(i23 << 3);
                        i5 = (i28 >> 31) ^ (i28 + i28);
                        i22 = dub.h(i5, i6, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 16:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        long j6 = unsafe.getLong(bsvVar2, j);
                        i2 = ctv.i(i23 << 3);
                        h = ctv.h((j6 >> 63) ^ (j6 + j6));
                        i7 = h + i2;
                        i22 += i7;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 17:
                    if (deiVar.af(bsvVar2, i19, i20, i21, i)) {
                        bsv bsvVar3 = (bsv) unsafe.getObject(bsvVar2, j);
                        dxm ak2 = deiVar.ak(i19);
                        int i29 = ctv.i(i23 << 3);
                        i8 = i29 + i29;
                        k2 = bsvVar3.k(ak2);
                        i7 = k2 + i8;
                        i22 += i7;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 18:
                    i7 = gog.c(i23, (List) unsafe.getObject(bsvVar2, j));
                    i22 += i7;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 19:
                    i7 = gog.z(i23, (List) unsafe.getObject(bsvVar2, j));
                    i22 += i7;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 20:
                    List list = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar2 = gog.f18487a;
                    if (list.size() != 0) {
                        i9 = (ctv.i(i23 << 3) * list.size()) + gog.u(list);
                        i22 += i9;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i9 = 0;
                    i22 += i9;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 21:
                    List list2 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar3 = gog.f18487a;
                    size = list2.size();
                    if (size != 0) {
                        g3 = gog.g(list2);
                        i10 = ctv.i(i23 << 3);
                        i11 = (i10 * size) + g3;
                        i22 += i11;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i11 = 0;
                    i22 += i11;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 22:
                    List list3 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar4 = gog.f18487a;
                    size = list3.size();
                    if (size != 0) {
                        g3 = gog.s(list3);
                        i10 = ctv.i(i23 << 3);
                        i11 = (i10 * size) + g3;
                        i22 += i11;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i11 = 0;
                    i22 += i11;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 23:
                    i7 = gog.c(i23, (List) unsafe.getObject(bsvVar2, j));
                    i22 += i7;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 24:
                    i7 = gog.z(i23, (List) unsafe.getObject(bsvVar2, j));
                    i22 += i7;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 25:
                    List list4 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar5 = gog.f18487a;
                    int size3 = list4.size();
                    if (size3 != 0) {
                        i9 = (ctv.i(i23 << 3) + 1) * size3;
                        i22 += i9;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i9 = 0;
                    i22 += i9;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 26:
                    List list5 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar6 = gog.f18487a;
                    int size4 = list5.size();
                    if (size4 != 0) {
                        i11 = ctv.i(i23 << 3) * size4;
                        for (int i30 = 0; i30 < size4; i30++) {
                            Object obj = list5.get(i30);
                            if (obj instanceof aki) {
                                int g5 = ((aki) obj).g();
                                i11 = dub.h(g5, g5, i11);
                            } else {
                                i11 = ctv.g((String) obj) + i11;
                            }
                        }
                        i22 += i11;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i11 = 0;
                    i22 += i11;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 27:
                    List list6 = (List) unsafe.getObject(bsvVar2, j);
                    dxm ak3 = deiVar.ak(i19);
                    cuf cufVar7 = gog.f18487a;
                    int size5 = list6.size();
                    if (size5 == 0) {
                        i12 = 0;
                    } else {
                        i12 = ctv.i(i23 << 3) * size5;
                        for (int i31 = 0; i31 < size5; i31++) {
                            int k3 = ((bsv) list6.get(i31)).k(ak3);
                            i12 = dub.h(k3, k3, i12);
                        }
                    }
                    i22 += i12;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 28:
                    List list7 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar8 = gog.f18487a;
                    int size6 = list7.size();
                    if (size6 != 0) {
                        i11 = ctv.i(i23 << 3) * size6;
                        for (int i32 = 0; i32 < list7.size(); i32++) {
                            int g6 = ((aki) list7.get(i32)).g();
                            i11 = dub.h(g6, g6, i11);
                        }
                        i22 += i11;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i11 = 0;
                    i22 += i11;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 29:
                    List list8 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar9 = gog.f18487a;
                    size = list8.size();
                    if (size != 0) {
                        g3 = gog.r(list8);
                        i10 = ctv.i(i23 << 3);
                        i11 = (i10 * size) + g3;
                        i22 += i11;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i11 = 0;
                    i22 += i11;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 30:
                    List list9 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar10 = gog.f18487a;
                    size = list9.size();
                    if (size != 0) {
                        g3 = gog.o(list9);
                        i10 = ctv.i(i23 << 3);
                        i11 = (i10 * size) + g3;
                        i22 += i11;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i11 = 0;
                    i22 += i11;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 31:
                    i7 = gog.z(i23, (List) unsafe.getObject(bsvVar2, j));
                    i22 += i7;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 32:
                    i7 = gog.c(i23, (List) unsafe.getObject(bsvVar2, j));
                    i22 += i7;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 33:
                    List list10 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar11 = gog.f18487a;
                    size = list10.size();
                    if (size != 0) {
                        g3 = gog.d(list10);
                        i10 = ctv.i(i23 << 3);
                        i11 = (i10 * size) + g3;
                        i22 += i11;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i11 = 0;
                    i22 += i11;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 34:
                    List list11 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar12 = gog.f18487a;
                    size = list11.size();
                    if (size != 0) {
                        g3 = gog.i(list11);
                        i10 = ctv.i(i23 << 3);
                        i11 = (i10 * size) + g3;
                        i22 += i11;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i11 = 0;
                    i22 += i11;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 35:
                    List list12 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar13 = gog.f18487a;
                    size2 = list12.size() * 8;
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 36:
                    List list13 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar14 = gog.f18487a;
                    size2 = list13.size() * 4;
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 37:
                    size2 = gog.u((List) unsafe.getObject(bsvVar2, j));
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 38:
                    size2 = gog.g((List) unsafe.getObject(bsvVar2, j));
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 39:
                    size2 = gog.s((List) unsafe.getObject(bsvVar2, j));
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 40:
                    List list14 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar15 = gog.f18487a;
                    size2 = list14.size() * 8;
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 41:
                    List list15 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar16 = gog.f18487a;
                    size2 = list15.size() * 4;
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 42:
                    List list16 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar17 = gog.f18487a;
                    size2 = list16.size();
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 43:
                    size2 = gog.r((List) unsafe.getObject(bsvVar2, j));
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 44:
                    size2 = gog.o((List) unsafe.getObject(bsvVar2, j));
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 45:
                    List list17 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar18 = gog.f18487a;
                    size2 = list17.size() * 4;
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 46:
                    List list18 = (List) unsafe.getObject(bsvVar2, j);
                    cuf cufVar19 = gog.f18487a;
                    size2 = list18.size() * 8;
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 47:
                    size2 = gog.d((List) unsafe.getObject(bsvVar2, j));
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 48:
                    size2 = gog.i((List) unsafe.getObject(bsvVar2, j));
                    if (size2 > 0) {
                        i13 = ctv.i(i23 << 3);
                        i22 = dub.l(size2, i13, size2, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 49:
                    List list19 = (List) unsafe.getObject(bsvVar2, j);
                    dxm ak4 = deiVar.ak(i19);
                    cuf cufVar20 = gog.f18487a;
                    int size7 = list19.size();
                    if (size7 == 0) {
                        i14 = 0;
                    } else {
                        i14 = 0;
                        for (int i33 = 0; i33 < size7; i33++) {
                            bsv bsvVar4 = (bsv) list19.get(i33);
                            int i34 = ctv.i(i23 << 3);
                            i14 += bsvVar4.k(ak4) + i34 + i34;
                        }
                    }
                    i22 += i14;
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 50:
                    int i35 = i19 / 3;
                    ou ouVar = (ou) unsafe.getObject(bsvVar2, j);
                    if (deiVar.i[i35 + i35] != null) {
                        throw new ClassCastException();
                    }
                    if (ouVar.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = ouVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 51:
                    if (!deiVar.ao(i23, i19, bsvVar2)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 8, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 52:
                    if (!deiVar.ao(i23, i19, bsvVar2)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 4, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 53:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        long l = l(j, bsvVar2);
                        i15 = ctv.i(i23 << 3);
                        h2 = ctv.h(l);
                        i22 += h2 + i15;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 54:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        long l2 = l(j, bsvVar2);
                        i15 = ctv.i(i23 << 3);
                        h2 = ctv.h(l2);
                        i22 += h2 + i15;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 55:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        long m2 = m(j, bsvVar2);
                        i15 = ctv.i(i23 << 3);
                        h2 = ctv.h(m2);
                        i22 += h2 + i15;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 56:
                    if (!deiVar.ao(i23, i19, bsvVar2)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 8, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 57:
                    if (!deiVar.ao(i23, i19, bsvVar2)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 4, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 58:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        i22 = dub.h(i23 << 3, 1, i22);
                    }
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 59:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        int i36 = i23 << 3;
                        Object object3 = unsafe.getObject(bsvVar2, j);
                        if (object3 instanceof aki) {
                            i16 = ctv.i(i36);
                            g4 = ((aki) object3).g();
                            i22 = dub.l(g4, g4, i16, i22);
                            i19 += 3;
                            deiVar = this;
                            bsvVar2 = bsvVar;
                            i18 = 1048575;
                        } else {
                            i15 = ctv.i(i36);
                            h2 = ctv.g((String) object3);
                            i22 += h2 + i15;
                            i19 += 3;
                            deiVar = this;
                            bsvVar2 = bsvVar;
                            i18 = 1048575;
                        }
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 60:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        Object object4 = unsafe.getObject(bsvVar2, j);
                        dxm ak5 = deiVar.ak(i19);
                        cuf cufVar21 = gog.f18487a;
                        i4 = ctv.i(i23 << 3);
                        k = ((bsv) object4).k(ak5);
                        i22 = dub.l(k, k, i4, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 61:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        aki akiVar2 = (aki) unsafe.getObject(bsvVar2, j);
                        i16 = ctv.i(i23 << 3);
                        g4 = akiVar2.g();
                        i22 = dub.l(g4, g4, i16, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 62:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        m = m(j, bsvVar2);
                        i17 = ctv.i(i23 << 3);
                        i22 = dub.h(m, i17, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 63:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        long m3 = m(j, bsvVar2);
                        i15 = ctv.i(i23 << 3);
                        h2 = ctv.h(m3);
                        i22 += h2 + i15;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 64:
                    if (!deiVar.ao(i23, i19, bsvVar2)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 4, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 65:
                    if (!deiVar.ao(i23, i19, bsvVar2)) {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                    i22 = dub.h(i23 << 3, 8, i22);
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
                case 66:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        int m4 = m(j, bsvVar2);
                        i17 = ctv.i(i23 << 3);
                        m = (m4 >> 31) ^ (m4 + m4);
                        i22 = dub.h(m, i17, i22);
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 67:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        long l3 = l(j, bsvVar2);
                        i15 = ctv.i(i23 << 3);
                        h2 = ctv.h((l3 >> 63) ^ (l3 + l3));
                        i22 += h2 + i15;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                case 68:
                    if (deiVar.ao(i23, i19, bsvVar2)) {
                        bsv bsvVar5 = (bsv) unsafe.getObject(bsvVar2, j);
                        dxm ak6 = deiVar.ak(i19);
                        int i37 = ctv.i(i23 << 3);
                        i8 = i37 + i37;
                        k2 = bsvVar5.k(ak6);
                        i7 = k2 + i8;
                        i22 += i7;
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    } else {
                        i19 += 3;
                        deiVar = this;
                        bsvVar2 = bsvVar;
                        i18 = 1048575;
                    }
                default:
                    i19 += 3;
                    deiVar = this;
                    bsvVar2 = bsvVar;
                    i18 = 1048575;
            }
        }
    }

    public final boolean ao(int i, int i2, Object obj) {
        return euh.n((long) (this.f14055f[i2 + 2] & 1048575), obj) == i;
    }

    public final ebv r(int i) {
        int i2 = i / 3;
        return (ebv) this.i[i2 + i2 + 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x01eb, code lost:
    
        if (r2 != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d9, code lost:
    
        if (r2 != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00db, code lost:
    
        r6 = 1231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00dd, code lost:
    
        r1 = r6 + r1;
     */
    @Override // g.dxm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int s(fsu fsuVar) {
        int i;
        long doubleToLongBits;
        int i2;
        int floatToIntBits;
        int i3;
        int i4;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = this.f14055f;
            if (i5 >= iArr.length) {
                return fsuVar.zzc.hashCode() + (i6 * 53);
            }
            int am = am(i5);
            int i7 = 1048575 & am;
            int o = o(am);
            int i8 = iArr[i5];
            long j = i7;
            int i9 = 1237;
            int i10 = 37;
            switch (o) {
                case 0:
                    i = i6 * 53;
                    doubleToLongBits = Double.doubleToLongBits(euh.f16177f.g(j, fsuVar));
                    Charset charset = cua.f13515a;
                    i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 1:
                    i2 = i6 * 53;
                    floatToIntBits = Float.floatToIntBits(euh.f16177f.c(j, fsuVar));
                    i6 = floatToIntBits + i2;
                    break;
                case 2:
                    i = i6 * 53;
                    doubleToLongBits = euh.p(j, fsuVar);
                    Charset charset2 = cua.f13515a;
                    i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 3:
                    i = i6 * 53;
                    doubleToLongBits = euh.p(j, fsuVar);
                    Charset charset3 = cua.f13515a;
                    i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 4:
                    i2 = i6 * 53;
                    floatToIntBits = euh.n(j, fsuVar);
                    i6 = floatToIntBits + i2;
                    break;
                case 5:
                    i = i6 * 53;
                    doubleToLongBits = euh.p(j, fsuVar);
                    Charset charset4 = cua.f13515a;
                    i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 6:
                    i2 = i6 * 53;
                    floatToIntBits = euh.n(j, fsuVar);
                    i6 = floatToIntBits + i2;
                    break;
                case 7:
                    i3 = i6 * 53;
                    boolean b2 = euh.f16177f.b(j, fsuVar);
                    Charset charset5 = cua.f13515a;
                    break;
                case 8:
                    i2 = i6 * 53;
                    floatToIntBits = ((String) euh.h(j, fsuVar)).hashCode();
                    i6 = floatToIntBits + i2;
                    break;
                case 9:
                    i4 = i6 * 53;
                    Object h = euh.h(j, fsuVar);
                    if (h != null) {
                        i10 = h.hashCode();
                    }
                    i6 = i4 + i10;
                    break;
                case 10:
                    i2 = i6 * 53;
                    floatToIntBits = euh.h(j, fsuVar).hashCode();
                    i6 = floatToIntBits + i2;
                    break;
                case 11:
                    i2 = i6 * 53;
                    floatToIntBits = euh.n(j, fsuVar);
                    i6 = floatToIntBits + i2;
                    break;
                case 12:
                    i2 = i6 * 53;
                    floatToIntBits = euh.n(j, fsuVar);
                    i6 = floatToIntBits + i2;
                    break;
                case 13:
                    i2 = i6 * 53;
                    floatToIntBits = euh.n(j, fsuVar);
                    i6 = floatToIntBits + i2;
                    break;
                case 14:
                    i = i6 * 53;
                    doubleToLongBits = euh.p(j, fsuVar);
                    Charset charset6 = cua.f13515a;
                    i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 15:
                    i2 = i6 * 53;
                    floatToIntBits = euh.n(j, fsuVar);
                    i6 = floatToIntBits + i2;
                    break;
                case 16:
                    i = i6 * 53;
                    doubleToLongBits = euh.p(j, fsuVar);
                    Charset charset7 = cua.f13515a;
                    i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                    break;
                case 17:
                    i4 = i6 * 53;
                    Object h2 = euh.h(j, fsuVar);
                    if (h2 != null) {
                        i10 = h2.hashCode();
                    }
                    i6 = i4 + i10;
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
                    i2 = i6 * 53;
                    floatToIntBits = euh.h(j, fsuVar).hashCode();
                    i6 = floatToIntBits + i2;
                    break;
                case 50:
                    i2 = i6 * 53;
                    floatToIntBits = euh.h(j, fsuVar).hashCode();
                    i6 = floatToIntBits + i2;
                    break;
                case 51:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i = i6 * 53;
                        doubleToLongBits = Double.doubleToLongBits(((Double) euh.h(j, fsuVar)).doubleValue());
                        Charset charset8 = cua.f13515a;
                        i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 52:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        floatToIntBits = Float.floatToIntBits(((Float) euh.h(j, fsuVar)).floatValue());
                        i6 = floatToIntBits + i2;
                        break;
                    }
                case 53:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i = i6 * 53;
                        doubleToLongBits = l(j, fsuVar);
                        Charset charset9 = cua.f13515a;
                        i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 54:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i = i6 * 53;
                        doubleToLongBits = l(j, fsuVar);
                        Charset charset10 = cua.f13515a;
                        i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 55:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        floatToIntBits = m(j, fsuVar);
                        i6 = floatToIntBits + i2;
                        break;
                    }
                case 56:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i = i6 * 53;
                        doubleToLongBits = l(j, fsuVar);
                        Charset charset11 = cua.f13515a;
                        i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 57:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        floatToIntBits = m(j, fsuVar);
                        i6 = floatToIntBits + i2;
                        break;
                    }
                case 58:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i3 = i6 * 53;
                        boolean booleanValue = ((Boolean) euh.h(j, fsuVar)).booleanValue();
                        Charset charset12 = cua.f13515a;
                        break;
                    }
                case 59:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        floatToIntBits = ((String) euh.h(j, fsuVar)).hashCode();
                        i6 = floatToIntBits + i2;
                        break;
                    }
                case 60:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        floatToIntBits = euh.h(j, fsuVar).hashCode();
                        i6 = floatToIntBits + i2;
                        break;
                    }
                case 61:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        floatToIntBits = euh.h(j, fsuVar).hashCode();
                        i6 = floatToIntBits + i2;
                        break;
                    }
                case 62:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        floatToIntBits = m(j, fsuVar);
                        i6 = floatToIntBits + i2;
                        break;
                    }
                case 63:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        floatToIntBits = m(j, fsuVar);
                        i6 = floatToIntBits + i2;
                        break;
                    }
                case 64:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        floatToIntBits = m(j, fsuVar);
                        i6 = floatToIntBits + i2;
                        break;
                    }
                case 65:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i = i6 * 53;
                        doubleToLongBits = l(j, fsuVar);
                        Charset charset13 = cua.f13515a;
                        i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 66:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        floatToIntBits = m(j, fsuVar);
                        i6 = floatToIntBits + i2;
                        break;
                    }
                case 67:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i = i6 * 53;
                        doubleToLongBits = l(j, fsuVar);
                        Charset charset14 = cua.f13515a;
                        i6 = i + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
                        break;
                    }
                case 68:
                    if (!ao(i8, i5, fsuVar)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        floatToIntBits = euh.h(j, fsuVar).hashCode();
                        i6 = floatToIntBits + i2;
                        break;
                    }
            }
            i5 += 3;
        }
    }

    public final void t(int i, Object obj) {
        int i2 = this.f14055f[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        euh.u(obj, j, (1 << (i2 >>> 20)) | euh.n(j, obj));
    }

    public final boolean u(int i, Object obj) {
        int i2 = this.f14055f[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int am = am(i);
            long j2 = am & 1048575;
            switch (o(am)) {
                case 0:
                    if (Double.doubleToRawLongBits(euh.f16177f.g(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(euh.f16177f.c(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (euh.p(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (euh.p(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (euh.n(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (euh.p(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (euh.n(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return euh.f16177f.b(j2, obj);
                case 8:
                    Object h = euh.h(j2, obj);
                    if (h instanceof String) {
                        if (((String) h).isEmpty()) {
                            return false;
                        }
                    } else {
                        if (!(h instanceof aki)) {
                            throw new IllegalArgumentException();
                        }
                        if (aki.f10381a.equals(h)) {
                            return false;
                        }
                    }
                    break;
                case 9:
                    if (euh.h(j2, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (aki.f10381a.equals(euh.h(j2, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (euh.n(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (euh.n(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (euh.n(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (euh.p(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (euh.n(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (euh.p(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (euh.h(j2, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i2 >>> 20)) & euh.n(j, obj)) == 0) {
            return false;
        }
        return true;
    }

    public final boolean v(fsu fsuVar, fsu fsuVar2, int i) {
        return u(i, fsuVar) == u(i, fsuVar2);
    }

    @Override // g.dxm
    public final void w(Object obj, byte[] bArr, int i, int i2, dsc dscVar) {
        ae(obj, bArr, i, i2, 0, dscVar);
    }

    public final Object x(int i, Object obj) {
        dxm ak = ak(i);
        int am = am(i) & 1048575;
        if (!u(i, obj)) {
            return ak.zze();
        }
        Object object = f14050a.getObject(obj, am);
        if (p(object)) {
            return object;
        }
        fsu zze = ak.zze();
        if (object != null) {
            ak.al(zze, object);
        }
        return zze;
    }

    public final void y(Object obj, int i, Object obj2) {
        f14050a.putObject(obj, am(i) & 1048575, obj2);
        t(i, obj);
    }

    @Override // g.dxm
    public final boolean z(fsu fsuVar, fsu fsuVar2) {
        boolean j;
        int i = 0;
        while (true) {
            int[] iArr = this.f14055f;
            if (i < iArr.length) {
                int am = am(i);
                long j2 = am & 1048575;
                switch (o(am)) {
                    case 0:
                        if (!v(fsuVar, fsuVar2, i)) {
                            break;
                        } else {
                            aul aulVar = euh.f16177f;
                            if (Double.doubleToLongBits(aulVar.g(j2, fsuVar)) != Double.doubleToLongBits(aulVar.g(j2, fsuVar2))) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 1:
                        if (!v(fsuVar, fsuVar2, i)) {
                            break;
                        } else {
                            aul aulVar2 = euh.f16177f;
                            if (Float.floatToIntBits(aulVar2.c(j2, fsuVar)) != Float.floatToIntBits(aulVar2.c(j2, fsuVar2))) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 2:
                        if (v(fsuVar, fsuVar2, i) && euh.p(j2, fsuVar) == euh.p(j2, fsuVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 3:
                        if (v(fsuVar, fsuVar2, i) && euh.p(j2, fsuVar) == euh.p(j2, fsuVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 4:
                        if (v(fsuVar, fsuVar2, i) && euh.n(j2, fsuVar) == euh.n(j2, fsuVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 5:
                        if (v(fsuVar, fsuVar2, i) && euh.p(j2, fsuVar) == euh.p(j2, fsuVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 6:
                        if (v(fsuVar, fsuVar2, i) && euh.n(j2, fsuVar) == euh.n(j2, fsuVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 7:
                        if (!v(fsuVar, fsuVar2, i)) {
                            break;
                        } else {
                            aul aulVar3 = euh.f16177f;
                            if (aulVar3.b(j2, fsuVar) != aulVar3.b(j2, fsuVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 8:
                        if (v(fsuVar, fsuVar2, i) && gog.j(euh.h(j2, fsuVar), euh.h(j2, fsuVar2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 9:
                        if (v(fsuVar, fsuVar2, i) && gog.j(euh.h(j2, fsuVar), euh.h(j2, fsuVar2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 10:
                        if (v(fsuVar, fsuVar2, i) && gog.j(euh.h(j2, fsuVar), euh.h(j2, fsuVar2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 11:
                        if (v(fsuVar, fsuVar2, i) && euh.n(j2, fsuVar) == euh.n(j2, fsuVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 12:
                        if (v(fsuVar, fsuVar2, i) && euh.n(j2, fsuVar) == euh.n(j2, fsuVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 13:
                        if (v(fsuVar, fsuVar2, i) && euh.n(j2, fsuVar) == euh.n(j2, fsuVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 14:
                        if (v(fsuVar, fsuVar2, i) && euh.p(j2, fsuVar) == euh.p(j2, fsuVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 15:
                        if (v(fsuVar, fsuVar2, i) && euh.n(j2, fsuVar) == euh.n(j2, fsuVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 16:
                        if (v(fsuVar, fsuVar2, i) && euh.p(j2, fsuVar) == euh.p(j2, fsuVar2)) {
                            continue;
                            i += 3;
                        }
                        break;
                    case 17:
                        if (v(fsuVar, fsuVar2, i) && gog.j(euh.h(j2, fsuVar), euh.h(j2, fsuVar2))) {
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
                        j = gog.j(euh.h(j2, fsuVar), euh.h(j2, fsuVar2));
                        break;
                    case 50:
                        j = gog.j(euh.h(j2, fsuVar), euh.h(j2, fsuVar2));
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
                        long j3 = iArr[i + 2] & 1048575;
                        if (euh.n(j3, fsuVar) == euh.n(j3, fsuVar2) && gog.j(euh.h(j2, fsuVar), euh.h(j2, fsuVar2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    default:
                        i += 3;
                }
                if (j) {
                    i += 3;
                }
            } else if (fsuVar.zzc.equals(fsuVar2.zzc)) {
                return true;
            }
        }
        return false;
    }

    @Override // g.dxm
    public final fsu zze() {
        return (fsu) ((fsu) this.f14054e).i(4);
    }
}
