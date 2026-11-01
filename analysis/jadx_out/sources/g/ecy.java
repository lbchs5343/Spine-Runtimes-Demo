package g;

import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public final class ecy implements ciw {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f15323a = new int[0];

    /* renamed from: b, reason: collision with root package name */
    public static final Unsafe f15324b = diy.n();

    /* renamed from: c, reason: collision with root package name */
    public final int f15325c;
    public final czj k;
    public final int l;
    public final cir m;
    public final int[] n;
    public final boolean o;
    public final int p;
    public final Object[] q;
    public final dgb r;
    public final int s;
    public final int[] t;

    public ecy(int[] iArr, Object[] objArr, int i, int i2, cir cirVar, boolean z, int[] iArr2, int i3, int i4, dgb dgbVar, czj czjVar, gnz gnzVar, aoq aoqVar) {
        this.n = iArr;
        this.q = objArr;
        this.s = i;
        this.l = i2;
        this.o = z;
        this.t = iArr2;
        this.f15325c = i3;
        this.p = i4;
        this.r = dgbVar;
        this.k = czjVar;
        this.m = cirVar;
    }

    public static long aa(long j, Object obj) {
        return ((Long) diy.f14260f.p(j, obj)).longValue();
    }

    public static fjx ab(Object obj) {
        cys cysVar = (cys) obj;
        fjx fjxVar = cysVar.zzc;
        if (fjxVar != fjx.f16899a) {
            return fjxVar;
        }
        fjx g2 = fjx.g();
        cysVar.zzc = g2;
        return g2;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x027f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ecy u(eqc eqcVar, dgb dgbVar, czj czjVar, gnz gnzVar, aoq aoqVar) {
        int i;
        int charAt;
        int charAt2;
        int charAt3;
        int charAt4;
        int i2;
        int i3;
        int[] iArr;
        int i4;
        int i5;
        char charAt5;
        int i6;
        char charAt6;
        int i7;
        char charAt7;
        int i8;
        char charAt8;
        int i9;
        char charAt9;
        int i10;
        char charAt10;
        int i11;
        char charAt11;
        int i12;
        char charAt12;
        int i13;
        int i14;
        int i15;
        Object[] objArr;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        Field x;
        char charAt13;
        int i23;
        int i24;
        Object obj;
        Field x2;
        Object obj2;
        Field x3;
        int i25;
        char charAt14;
        int i26;
        int i27;
        char charAt15;
        int i28;
        int i29;
        char charAt16;
        int i30;
        char charAt17;
        boolean z = ((eqcVar.f15974a & 1) == 1 ? (char) 1 : (char) 2) == 2;
        String str = eqcVar.f15976c;
        int length = str.length();
        if (str.charAt(0) >= 55296) {
            int i31 = 1;
            while (true) {
                i = i31 + 1;
                if (str.charAt(i31) < 55296) {
                    break;
                }
                i31 = i;
            }
        } else {
            i = 1;
        }
        int i32 = i + 1;
        int charAt18 = str.charAt(i);
        if (charAt18 >= 55296) {
            int i33 = charAt18 & 8191;
            int i34 = 13;
            while (true) {
                i30 = i32 + 1;
                charAt17 = str.charAt(i32);
                if (charAt17 < 55296) {
                    break;
                }
                i33 |= (charAt17 & 8191) << i34;
                i34 += 13;
                i32 = i30;
            }
            charAt18 = i33 | (charAt17 << i34);
            i32 = i30;
        }
        if (charAt18 == 0) {
            iArr = f15323a;
            i4 = 0;
            i3 = 0;
            charAt = 0;
            charAt2 = 0;
            charAt3 = 0;
            i2 = 0;
            charAt4 = 0;
        } else {
            int i35 = i32 + 1;
            int charAt19 = str.charAt(i32);
            if (charAt19 >= 55296) {
                int i36 = charAt19 & 8191;
                int i37 = 13;
                while (true) {
                    i12 = i35 + 1;
                    charAt12 = str.charAt(i35);
                    if (charAt12 < 55296) {
                        break;
                    }
                    i36 |= (charAt12 & 8191) << i37;
                    i37 += 13;
                    i35 = i12;
                }
                charAt19 = i36 | (charAt12 << i37);
                i35 = i12;
            }
            int i38 = i35 + 1;
            int charAt20 = str.charAt(i35);
            if (charAt20 >= 55296) {
                int i39 = charAt20 & 8191;
                int i40 = 13;
                while (true) {
                    i11 = i38 + 1;
                    charAt11 = str.charAt(i38);
                    if (charAt11 < 55296) {
                        break;
                    }
                    i39 |= (charAt11 & 8191) << i40;
                    i40 += 13;
                    i38 = i11;
                }
                charAt20 = i39 | (charAt11 << i40);
                i38 = i11;
            }
            int i41 = i38 + 1;
            charAt = str.charAt(i38);
            if (charAt >= 55296) {
                int i42 = charAt & 8191;
                int i43 = 13;
                while (true) {
                    i10 = i41 + 1;
                    charAt10 = str.charAt(i41);
                    if (charAt10 < 55296) {
                        break;
                    }
                    i42 |= (charAt10 & 8191) << i43;
                    i43 += 13;
                    i41 = i10;
                }
                charAt = i42 | (charAt10 << i43);
                i41 = i10;
            }
            int i44 = i41 + 1;
            charAt2 = str.charAt(i41);
            if (charAt2 >= 55296) {
                int i45 = charAt2 & 8191;
                int i46 = 13;
                while (true) {
                    i9 = i44 + 1;
                    charAt9 = str.charAt(i44);
                    if (charAt9 < 55296) {
                        break;
                    }
                    i45 |= (charAt9 & 8191) << i46;
                    i46 += 13;
                    i44 = i9;
                }
                charAt2 = i45 | (charAt9 << i46);
                i44 = i9;
            }
            int i47 = i44 + 1;
            int charAt21 = str.charAt(i44);
            if (charAt21 >= 55296) {
                int i48 = charAt21 & 8191;
                int i49 = 13;
                while (true) {
                    i8 = i47 + 1;
                    charAt8 = str.charAt(i47);
                    if (charAt8 < 55296) {
                        break;
                    }
                    i48 |= (charAt8 & 8191) << i49;
                    i49 += 13;
                    i47 = i8;
                }
                charAt21 = i48 | (charAt8 << i49);
                i47 = i8;
            }
            int i50 = i47 + 1;
            charAt3 = str.charAt(i47);
            if (charAt3 >= 55296) {
                int i51 = charAt3 & 8191;
                int i52 = 13;
                while (true) {
                    i7 = i50 + 1;
                    charAt7 = str.charAt(i50);
                    if (charAt7 < 55296) {
                        break;
                    }
                    i51 |= (charAt7 & 8191) << i52;
                    i52 += 13;
                    i50 = i7;
                }
                charAt3 = i51 | (charAt7 << i52);
                i50 = i7;
            }
            int i53 = i50 + 1;
            int charAt22 = str.charAt(i50);
            if (charAt22 >= 55296) {
                int i54 = charAt22 & 8191;
                int i55 = 13;
                while (true) {
                    i6 = i53 + 1;
                    charAt6 = str.charAt(i53);
                    if (charAt6 < 55296) {
                        break;
                    }
                    i54 |= (charAt6 & 8191) << i55;
                    i55 += 13;
                    i53 = i6;
                }
                charAt22 = i54 | (charAt6 << i55);
                i53 = i6;
            }
            int i56 = i53 + 1;
            charAt4 = str.charAt(i53);
            if (charAt4 >= 55296) {
                int i57 = charAt4 & 8191;
                int i58 = i56;
                int i59 = 13;
                while (true) {
                    i5 = i58 + 1;
                    charAt5 = str.charAt(i58);
                    if (charAt5 < 55296) {
                        break;
                    }
                    i57 |= (charAt5 & 8191) << i59;
                    i59 += 13;
                    i58 = i5;
                }
                charAt4 = i57 | (charAt5 << i59);
                i56 = i5;
            }
            int[] iArr2 = new int[charAt4 + charAt3 + charAt22];
            i2 = charAt19 + charAt19 + charAt20;
            i3 = charAt21;
            iArr = iArr2;
            i4 = charAt19;
            i32 = i56;
        }
        Unsafe unsafe = f15324b;
        Object[] objArr2 = eqcVar.f15977d;
        Class<?> cls = eqcVar.f15975b.getClass();
        int i60 = i4;
        int[] iArr3 = new int[i3 * 3];
        Object[] objArr3 = new Object[i3 + i3];
        int i61 = charAt3 + charAt4;
        int i62 = i61;
        int i63 = charAt4;
        int i64 = 0;
        int i65 = 0;
        while (i32 < length) {
            int i66 = i32 + 1;
            int charAt23 = str.charAt(i32);
            int[] iArr4 = iArr3;
            if (charAt23 >= 55296) {
                int i67 = charAt23 & 8191;
                int i68 = i66;
                int i69 = 13;
                while (true) {
                    i29 = i68 + 1;
                    charAt16 = str.charAt(i68);
                    i13 = length;
                    if (charAt16 < 55296) {
                        break;
                    }
                    i67 |= (charAt16 & 8191) << i69;
                    i69 += 13;
                    i68 = i29;
                    length = i13;
                }
                charAt23 = i67 | (charAt16 << i69);
                i14 = i29;
            } else {
                i13 = length;
                i14 = i66;
            }
            int i70 = i14 + 1;
            int charAt24 = str.charAt(i14);
            if (charAt24 >= 55296) {
                int i71 = charAt24 & 8191;
                int i72 = i70;
                int i73 = 13;
                while (true) {
                    i27 = i72 + 1;
                    charAt15 = str.charAt(i72);
                    i28 = i71;
                    if (charAt15 < 55296) {
                        break;
                    }
                    i71 = i28 | ((charAt15 & 8191) << i73);
                    i73 += 13;
                    i72 = i27;
                }
                charAt24 = i28 | (charAt15 << i73);
                i15 = i27;
            } else {
                i15 = i70;
            }
            int i74 = charAt23;
            int i75 = charAt24 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
            Object[] objArr4 = objArr3;
            if ((charAt24 & 1024) != 0) {
                iArr[i65] = i64;
                i65++;
            }
            if (i75 >= 51) {
                int i76 = i15 + 1;
                int charAt25 = str.charAt(i15);
                if (charAt25 >= 55296) {
                    int i77 = charAt25 & 8191;
                    int i78 = i76;
                    int i79 = 13;
                    while (true) {
                        i25 = i78 + 1;
                        charAt14 = str.charAt(i78);
                        i26 = i77;
                        if (charAt14 < 55296) {
                            break;
                        }
                        i77 = i26 | ((charAt14 & 8191) << i79);
                        i79 += 13;
                        i78 = i25;
                    }
                    charAt25 = i26 | (charAt14 << i79);
                    i23 = i25;
                } else {
                    i23 = i76;
                }
                int i80 = charAt25;
                int i81 = i75 - 51;
                i19 = i23;
                if (i81 == 9 || i81 == 17) {
                    int i82 = i64 / 3;
                    i24 = i2 + 1;
                    objArr4[i82 + i82 + 1] = objArr2[i2];
                } else {
                    if (i81 == 12 && !z) {
                        int i83 = i64 / 3;
                        i24 = i2 + 1;
                        objArr4[i83 + i83 + 1] = objArr2[i2];
                    }
                    int i84 = i80 + i80;
                    obj = objArr2[i84];
                    if (obj instanceof Field) {
                        x2 = x(cls, (String) obj);
                        objArr2[i84] = x2;
                    } else {
                        x2 = (Field) obj;
                    }
                    objArr = objArr2;
                    int objectFieldOffset = (int) unsafe.objectFieldOffset(x2);
                    int i85 = i84 + 1;
                    obj2 = objArr[i85];
                    if (obj2 instanceof Field) {
                        x3 = x(cls, (String) obj2);
                        objArr[i85] = x3;
                    } else {
                        x3 = (Field) obj2;
                    }
                    i16 = (int) unsafe.objectFieldOffset(x3);
                    i21 = objectFieldOffset;
                    i20 = 0;
                }
                i2 = i24;
                int i842 = i80 + i80;
                obj = objArr2[i842];
                if (obj instanceof Field) {
                }
                objArr = objArr2;
                int objectFieldOffset2 = (int) unsafe.objectFieldOffset(x2);
                int i852 = i842 + 1;
                obj2 = objArr[i852];
                if (obj2 instanceof Field) {
                }
                i16 = (int) unsafe.objectFieldOffset(x3);
                i21 = objectFieldOffset2;
                i20 = 0;
            } else {
                objArr = objArr2;
                int i86 = i2 + 1;
                Field x4 = x(cls, (String) objArr[i2]);
                if (i75 == 9 || i75 == 17) {
                    int i87 = i64 / 3;
                    objArr4[i87 + i87 + 1] = x4.getType();
                } else {
                    if (i75 == 27 || i75 == 49) {
                        int i88 = i64 / 3;
                        i2 += 2;
                        objArr4[i88 + i88 + 1] = objArr[i86];
                    } else if (i75 == 12 || i75 == 30 || i75 == 44) {
                        if (!z) {
                            int i89 = i64 / 3;
                            i2 += 2;
                            objArr4[i89 + i89 + 1] = objArr[i86];
                        }
                    } else if (i75 == 50) {
                        int i90 = i63 + 1;
                        iArr[i63] = i64;
                        int i91 = i64 / 3;
                        int i92 = i91 + i91;
                        int i93 = i2 + 2;
                        objArr4[i92] = objArr[i86];
                        if ((charAt24 & 2048) != 0) {
                            objArr4[i92 + 1] = objArr[i93];
                            i2 += 3;
                        } else {
                            i2 = i93;
                        }
                        i63 = i90;
                    }
                    int objectFieldOffset3 = (int) unsafe.objectFieldOffset(x4);
                    i16 = 1048575;
                    if ((charAt24 & 4096) == 4096 || i75 > 17) {
                        i17 = i15;
                        i18 = 0;
                    } else {
                        int i94 = i15 + 1;
                        int charAt26 = str.charAt(i15);
                        if (charAt26 >= 55296) {
                            int i95 = charAt26 & 8191;
                            int i96 = 13;
                            while (true) {
                                i22 = i94 + 1;
                                charAt13 = str.charAt(i94);
                                if (charAt13 < 55296) {
                                    break;
                                }
                                i95 |= (charAt13 & 8191) << i96;
                                i96 += 13;
                                i94 = i22;
                            }
                            charAt26 = i95 | (charAt13 << i96);
                        } else {
                            i22 = i94;
                        }
                        int i97 = (charAt26 / 32) + i60 + i60;
                        Object obj3 = objArr[i97];
                        if (obj3 instanceof Field) {
                            x = (Field) obj3;
                        } else {
                            x = x(cls, (String) obj3);
                            objArr[i97] = x;
                        }
                        int objectFieldOffset4 = (int) unsafe.objectFieldOffset(x);
                        i18 = charAt26 % 32;
                        i17 = i22;
                        i16 = objectFieldOffset4;
                    }
                    if (i75 >= 18 || i75 > 49) {
                        i19 = i17;
                    } else {
                        iArr[i62] = objectFieldOffset3;
                        i19 = i17;
                        i62++;
                    }
                    i20 = i18;
                    i21 = objectFieldOffset3;
                }
                i2 = i86;
                int objectFieldOffset32 = (int) unsafe.objectFieldOffset(x4);
                i16 = 1048575;
                if ((charAt24 & 4096) == 4096) {
                }
                i17 = i15;
                i18 = 0;
                if (i75 >= 18) {
                }
                i19 = i17;
                i20 = i18;
                i21 = objectFieldOffset32;
            }
            int i98 = i64 + 1;
            iArr4[i64] = i74;
            int i99 = i64 + 2;
            String str2 = str;
            iArr4[i98] = ((charAt24 & 512) != 0 ? C.ENCODING_PCM_A_LAW : 0) | ((charAt24 & 256) != 0 ? C.ENCODING_PCM_MU_LAW : 0) | (i75 << 20) | i21;
            i64 += 3;
            iArr4[i99] = (i20 << 20) | i16;
            str = str2;
            iArr3 = iArr4;
            objArr3 = objArr4;
            length = i13;
            i32 = i19;
            objArr2 = objArr;
        }
        return new ecy(iArr3, objArr3, charAt, charAt2, eqcVar.f15975b, z, iArr, charAt4, i61, dgbVar, czjVar, gnzVar, aoqVar);
    }

    public static int v(int i) {
        return (i >>> 20) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
    }

    public static ecy w(eqc eqcVar, dgb dgbVar, czj czjVar, gnz gnzVar, aoq aoqVar) {
        if (eqcVar instanceof eqc) {
            return u(eqcVar, dgbVar, czjVar, gnzVar, aoqVar);
        }
        eqcVar.getClass();
        throw new ClassCastException();
    }

    public static Field x(Class cls, String str) {
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

    public static int y(long j, Object obj) {
        return ((Integer) diy.f14260f.p(j, obj)).intValue();
    }

    public static final void z(int i, Object obj, aoy aoyVar) {
        if (!(obj instanceof String)) {
            aoyVar.aa(i, (cyb) obj);
        } else {
            ((p) aoyVar.h).s(i, (String) obj);
        }
    }

    public final dcm ac(int i) {
        int i2 = i / 3;
        return (dcm) this.q[i2 + i2 + 1];
    }

    public final int ad(int i, int i2) {
        int[] iArr = this.n;
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

    public final void ae(Object obj, int i, Object obj2) {
        long ao = ao(i) & 1048575;
        if (ar(i, obj2)) {
            frx frxVar = diy.f14260f;
            Object p = frxVar.p(ao, obj);
            Object p2 = frxVar.p(ao, obj2);
            if (p != null && p2 != null) {
                diy.h(ao, obj, dhz.d(p, p2));
                ap(i, obj);
            } else if (p2 != null) {
                diy.h(ao, obj, p2);
                ap(i, obj);
            }
        }
    }

    public final int af(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, fks fksVar) {
        int u;
        Unsafe unsafe = f15324b;
        cwe cweVar = (cwe) unsafe.getObject(obj, j2);
        if (!((gzj) cweVar).f19052f) {
            int size = cweVar.size();
            cweVar = cweVar.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j2, cweVar);
        }
        cwe cweVar2 = cweVar;
        switch (i7) {
            case 18:
            case 35:
                if (i5 != 2) {
                    if (i5 == 1) {
                        if (cweVar2 != null) {
                            throw new ClassCastException();
                        }
                        Double.longBitsToDouble(buj.af(i, bArr));
                        throw null;
                    }
                    return i;
                }
                if (cweVar2 != null) {
                    throw new ClassCastException();
                }
                int as = buj.as(bArr, i, fksVar);
                int i8 = fksVar.f16943a + as;
                if (as < i8) {
                    Double.longBitsToDouble(buj.af(as, bArr));
                    throw null;
                }
                if (as == i8) {
                    return as;
                }
                throw drq.d();
            case 19:
            case 36:
                if (i5 != 2) {
                    if (i5 == 5) {
                        if (cweVar2 != null) {
                            throw new ClassCastException();
                        }
                        Float.intBitsToFloat(buj.ae(bArr, i));
                        throw null;
                    }
                    return i;
                }
                if (cweVar2 != null) {
                    throw new ClassCastException();
                }
                int as2 = buj.as(bArr, i, fksVar);
                int i9 = fksVar.f16943a + as2;
                if (as2 < i9) {
                    Float.intBitsToFloat(buj.ae(bArr, as2));
                    throw null;
                }
                if (as2 == i9) {
                    return as2;
                }
                throw drq.d();
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    ajv ajvVar = (ajv) cweVar2;
                    int as3 = buj.as(bArr, i, fksVar);
                    int i10 = fksVar.f16943a + as3;
                    while (as3 < i10) {
                        as3 = buj.ai(bArr, as3, fksVar);
                        ajvVar.zzg(fksVar.f16944b);
                    }
                    if (as3 == i10) {
                        return as3;
                    }
                    throw drq.d();
                }
                if (i5 == 0) {
                    ajv ajvVar2 = (ajv) cweVar2;
                    int ai = buj.ai(bArr, i, fksVar);
                    ajvVar2.zzg(fksVar.f16944b);
                    while (ai < i2) {
                        int as4 = buj.as(bArr, ai, fksVar);
                        if (i3 != fksVar.f16943a) {
                            return ai;
                        }
                        ai = buj.ai(bArr, as4, fksVar);
                        ajvVar2.zzg(fksVar.f16944b);
                    }
                    return ai;
                }
                return i;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 != 2) {
                    if (i5 == 0) {
                        return buj.u(i3, bArr, i, i2, cweVar2, fksVar);
                    }
                    return i;
                }
                eaa eaaVar = (eaa) cweVar2;
                int as5 = buj.as(bArr, i, fksVar);
                int i11 = fksVar.f16943a + as5;
                while (as5 < i11) {
                    as5 = buj.as(bArr, as5, fksVar);
                    eaaVar.d(fksVar.f16943a);
                }
                if (as5 == i11) {
                    return as5;
                }
                throw drq.d();
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    ajv ajvVar3 = (ajv) cweVar2;
                    int as6 = buj.as(bArr, i, fksVar);
                    int i12 = fksVar.f16943a + as6;
                    while (as6 < i12) {
                        ajvVar3.zzg(buj.af(as6, bArr));
                        as6 += 8;
                    }
                    if (as6 == i12) {
                        return as6;
                    }
                    throw drq.d();
                }
                if (i5 == 1) {
                    ajv ajvVar4 = (ajv) cweVar2;
                    ajvVar4.zzg(buj.af(i, bArr));
                    int i13 = i + 8;
                    while (i13 < i2) {
                        int as7 = buj.as(bArr, i13, fksVar);
                        if (i3 != fksVar.f16943a) {
                            return i13;
                        }
                        ajvVar4.zzg(buj.af(as7, bArr));
                        i13 = as7 + 8;
                    }
                    return i13;
                }
                return i;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    eaa eaaVar2 = (eaa) cweVar2;
                    int as8 = buj.as(bArr, i, fksVar);
                    int i14 = fksVar.f16943a + as8;
                    while (as8 < i14) {
                        eaaVar2.d(buj.ae(bArr, as8));
                        as8 += 4;
                    }
                    if (as8 == i14) {
                        return as8;
                    }
                    throw drq.d();
                }
                if (i5 == 5) {
                    eaa eaaVar3 = (eaa) cweVar2;
                    eaaVar3.d(buj.ae(bArr, i));
                    int i15 = i + 4;
                    while (i15 < i2) {
                        int as9 = buj.as(bArr, i15, fksVar);
                        if (i3 != fksVar.f16943a) {
                            return i15;
                        }
                        eaaVar3.d(buj.ae(bArr, as9));
                        i15 = as9 + 4;
                    }
                    return i15;
                }
                return i;
            case 25:
            case 42:
                if (i5 != 2) {
                    if (i5 == 0) {
                        if (cweVar2 != null) {
                            throw new ClassCastException();
                        }
                        buj.ai(bArr, i, fksVar);
                        throw null;
                    }
                    return i;
                }
                if (cweVar2 != null) {
                    throw new ClassCastException();
                }
                int as10 = buj.as(bArr, i, fksVar);
                int i16 = fksVar.f16943a + as10;
                if (as10 < i16) {
                    buj.ai(bArr, as10, fksVar);
                    throw null;
                }
                if (as10 == i16) {
                    return as10;
                }
                throw drq.d();
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        int as11 = buj.as(bArr, i, fksVar);
                        int i17 = fksVar.f16943a;
                        if (i17 < 0) {
                            throw drq.c();
                        }
                        if (i17 == 0) {
                            cweVar2.add("");
                        } else {
                            cweVar2.add(new String(bArr, as11, i17, dhz.f14209a));
                            as11 += i17;
                        }
                        while (as11 < i2) {
                            int as12 = buj.as(bArr, as11, fksVar);
                            if (i3 != fksVar.f16943a) {
                                return as11;
                            }
                            as11 = buj.as(bArr, as12, fksVar);
                            int i18 = fksVar.f16943a;
                            if (i18 < 0) {
                                throw drq.c();
                            }
                            if (i18 == 0) {
                                cweVar2.add("");
                            } else {
                                cweVar2.add(new String(bArr, as11, i18, dhz.f14209a));
                                as11 += i18;
                            }
                        }
                        return as11;
                    }
                    int as13 = buj.as(bArr, i, fksVar);
                    int i19 = fksVar.f16943a;
                    if (i19 < 0) {
                        throw drq.c();
                    }
                    if (i19 == 0) {
                        cweVar2.add("");
                    } else {
                        int i20 = as13 + i19;
                        gua.f18749a.getClass();
                        if (!cuf.g(as13, bArr, i20)) {
                            throw drq.b();
                        }
                        cweVar2.add(new String(bArr, as13, i19, dhz.f14209a));
                        as13 = i20;
                    }
                    while (as13 < i2) {
                        int as14 = buj.as(bArr, as13, fksVar);
                        if (i3 != fksVar.f16943a) {
                            return as13;
                        }
                        as13 = buj.as(bArr, as14, fksVar);
                        int i21 = fksVar.f16943a;
                        if (i21 < 0) {
                            throw drq.c();
                        }
                        if (i21 == 0) {
                            cweVar2.add("");
                        } else {
                            int i22 = as13 + i21;
                            gua.f18749a.getClass();
                            if (!cuf.g(as13, bArr, i22)) {
                                throw drq.b();
                            }
                            cweVar2.add(new String(bArr, as13, i21, dhz.f14209a));
                            as13 = i22;
                        }
                    }
                    return as13;
                }
                return i;
            case 27:
                if (i5 == 2) {
                    return buj.aq(ah(i6), i3, bArr, i, i2, cweVar2, fksVar);
                }
                return i;
            case 28:
                if (i5 == 2) {
                    int as15 = buj.as(bArr, i, fksVar);
                    int i23 = fksVar.f16943a;
                    if (i23 < 0) {
                        throw drq.c();
                    }
                    if (i23 > bArr.length - as15) {
                        throw drq.d();
                    }
                    if (i23 == 0) {
                        cweVar2.add(cyb.f13731d);
                    } else {
                        cweVar2.add(cyb.f(as15, bArr, i23));
                        as15 += i23;
                    }
                    while (as15 < i2) {
                        int as16 = buj.as(bArr, as15, fksVar);
                        if (i3 != fksVar.f16943a) {
                            return as15;
                        }
                        as15 = buj.as(bArr, as16, fksVar);
                        int i24 = fksVar.f16943a;
                        if (i24 < 0) {
                            throw drq.c();
                        }
                        if (i24 > bArr.length - as15) {
                            throw drq.d();
                        }
                        if (i24 == 0) {
                            cweVar2.add(cyb.f13731d);
                        } else {
                            cweVar2.add(cyb.f(as15, bArr, i24));
                            as15 += i24;
                        }
                    }
                    return as15;
                }
                return i;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        u = buj.u(i3, bArr, i, i2, cweVar2, fksVar);
                    }
                    return i;
                }
                eaa eaaVar4 = (eaa) cweVar2;
                u = buj.as(bArr, i, fksVar);
                int i25 = fksVar.f16943a + u;
                while (u < i25) {
                    u = buj.as(bArr, u, fksVar);
                    eaaVar4.d(fksVar.f16943a);
                }
                if (u != i25) {
                    throw drq.d();
                }
                cys cysVar = (cys) obj;
                fjx fjxVar = cysVar.zzc;
                fjx fjxVar2 = fjxVar != fjx.f16899a ? fjxVar : null;
                dcm ac = ac(i6);
                Class cls = ave.f10911b;
                if (ac != null) {
                    czj czjVar = this.k;
                    if (cweVar2 != null) {
                        int size2 = cweVar2.size();
                        int i26 = 0;
                        for (int i27 = 0; i27 < size2; i27++) {
                            Integer num = (Integer) cweVar2.get(i27);
                            int intValue = num.intValue();
                            if (ac.zza(intValue)) {
                                if (i27 != i26) {
                                    cweVar2.set(i26, num);
                                }
                                i26++;
                            } else {
                                if (fjxVar2 == null) {
                                    czjVar.getClass();
                                    fjxVar2 = fjx.g();
                                }
                                czjVar.getClass();
                                fjxVar2.j(i4 << 3, Long.valueOf(intValue));
                            }
                        }
                        if (i26 != size2) {
                            cweVar2.subList(i26, size2).clear();
                        }
                    } else {
                        Iterator it = cweVar2.iterator();
                        while (it.hasNext()) {
                            int intValue2 = ((Integer) it.next()).intValue();
                            if (!ac.zza(intValue2)) {
                                if (fjxVar2 == null) {
                                    czjVar.getClass();
                                    fjxVar2 = fjx.g();
                                }
                                czjVar.getClass();
                                fjxVar2.j(i4 << 3, Long.valueOf(intValue2));
                                it.remove();
                            }
                        }
                    }
                }
                if (fjxVar2 == null) {
                    return u;
                }
                cysVar.zzc = fjxVar2;
                return u;
            case 33:
            case 47:
                if (i5 == 2) {
                    eaa eaaVar5 = (eaa) cweVar2;
                    int as17 = buj.as(bArr, i, fksVar);
                    int i28 = fksVar.f16943a + as17;
                    while (as17 < i28) {
                        as17 = buj.as(bArr, as17, fksVar);
                        eaaVar5.d(awt.am(fksVar.f16943a));
                    }
                    if (as17 == i28) {
                        return as17;
                    }
                    throw drq.d();
                }
                if (i5 == 0) {
                    eaa eaaVar6 = (eaa) cweVar2;
                    int as18 = buj.as(bArr, i, fksVar);
                    eaaVar6.d(awt.am(fksVar.f16943a));
                    while (as18 < i2) {
                        int as19 = buj.as(bArr, as18, fksVar);
                        if (i3 != fksVar.f16943a) {
                            return as18;
                        }
                        as18 = buj.as(bArr, as19, fksVar);
                        eaaVar6.d(awt.am(fksVar.f16943a));
                    }
                    return as18;
                }
                return i;
            case 34:
            case 48:
                if (i5 == 2) {
                    ajv ajvVar5 = (ajv) cweVar2;
                    int as20 = buj.as(bArr, i, fksVar);
                    int i29 = fksVar.f16943a + as20;
                    while (as20 < i29) {
                        as20 = buj.ai(bArr, as20, fksVar);
                        ajvVar5.zzg(awt.m(fksVar.f16944b));
                    }
                    if (as20 == i29) {
                        return as20;
                    }
                    throw drq.d();
                }
                if (i5 == 0) {
                    ajv ajvVar6 = (ajv) cweVar2;
                    int ai2 = buj.ai(bArr, i, fksVar);
                    ajvVar6.zzg(awt.m(fksVar.f16944b));
                    while (ai2 < i2) {
                        int as21 = buj.as(bArr, ai2, fksVar);
                        if (i3 != fksVar.f16943a) {
                            return ai2;
                        }
                        ai2 = buj.ai(bArr, as21, fksVar);
                        ajvVar6.zzg(awt.m(fksVar.f16944b));
                    }
                    return ai2;
                }
                return i;
            default:
                if (i5 == 3) {
                    ciw ah = ah(i6);
                    int i30 = (i3 & (-8)) | 4;
                    int s = buj.s(ah, bArr, i, i2, i30, fksVar);
                    ciw ciwVar = ah;
                    fks fksVar2 = fksVar;
                    cweVar2.add(fksVar2.f16945c);
                    while (s < i2) {
                        int as22 = buj.as(bArr, s, fksVar2);
                        if (i3 != fksVar2.f16943a) {
                            return s;
                        }
                        ciw ciwVar2 = ciwVar;
                        fks fksVar3 = fksVar2;
                        s = buj.s(ciwVar2, bArr, as22, i2, i30, fksVar3);
                        cweVar2.add(fksVar3.f16945c);
                        ciwVar = ciwVar2;
                        fksVar2 = fksVar3;
                    }
                    return s;
                }
                return i;
        }
    }

    public final int ag(Object obj) {
        int h;
        int i;
        int h2;
        int g2;
        int n;
        int h3;
        int i2;
        int i3;
        Unsafe unsafe = f15324b;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int[] iArr = this.n;
            if (i4 >= iArr.length) {
                this.k.getClass();
                return ((cys) obj).zzc.i() + i5;
            }
            int ao = ao(i4);
            int v = v(ao);
            int i6 = iArr[i4];
            long j = ao & 1048575;
            if (v >= jh.zzJ.zza() && v <= jh.zzW.zza()) {
                int i7 = iArr[i4 + 2];
            }
            switch (v) {
                case 0:
                    if (ar(i4, obj)) {
                        i5 = dub.d(i6 << 3, 8, i5);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (ar(i4, obj)) {
                        i5 = dub.d(i6 << 3, 4, i5);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (ar(i4, obj)) {
                        long k = diy.f14260f.k(j, obj);
                        h = p.h(i6 << 3);
                        i = p.i(k);
                        n = i + h;
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (ar(i4, obj)) {
                        long k2 = diy.f14260f.k(j, obj);
                        h = p.h(i6 << 3);
                        i = p.i(k2);
                        n = i + h;
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (ar(i4, obj)) {
                        int r = diy.f14260f.r(j, obj);
                        h2 = p.h(i6 << 3);
                        g2 = p.g(r);
                        n = g2 + h2;
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (ar(i4, obj)) {
                        i5 = dub.d(i6 << 3, 8, i5);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (ar(i4, obj)) {
                        i5 = dub.d(i6 << 3, 4, i5);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (ar(i4, obj)) {
                        i5 = dub.d(i6 << 3, 1, i5);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (ar(i4, obj)) {
                        Object p = diy.f14260f.p(j, obj);
                        if (p instanceof cyb) {
                            int h4 = p.h(i6 << 3);
                            int c2 = ((cyb) p).c();
                            i5 = dub.j(c2, c2, h4, i5);
                            break;
                        } else {
                            h2 = p.h(i6 << 3);
                            g2 = p.j((String) p);
                            n = g2 + h2;
                            i5 += n;
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (ar(i4, obj)) {
                        n = ave.n(i6, diy.f14260f.p(j, obj), ah(i4));
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (ar(i4, obj)) {
                        cyb cybVar = (cyb) diy.f14260f.p(j, obj);
                        int h5 = p.h(i6 << 3);
                        int c3 = cybVar.c();
                        i5 = dub.j(c3, c3, h5, i5);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (ar(i4, obj)) {
                        i5 = dub.d(diy.f14260f.r(j, obj), p.h(i6 << 3), i5);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (ar(i4, obj)) {
                        int r2 = diy.f14260f.r(j, obj);
                        h2 = p.h(i6 << 3);
                        g2 = p.g(r2);
                        n = g2 + h2;
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (ar(i4, obj)) {
                        i5 = dub.d(i6 << 3, 4, i5);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (ar(i4, obj)) {
                        i5 = dub.d(i6 << 3, 8, i5);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (ar(i4, obj)) {
                        int r3 = diy.f14260f.r(j, obj);
                        i5 = dub.d((r3 >> 31) ^ (r3 + r3), p.h(i6 << 3), i5);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (ar(i4, obj)) {
                        long k3 = diy.f14260f.k(j, obj);
                        h3 = p.h(i6 << 3);
                        i2 = p.i((k3 + k3) ^ (k3 >> 63));
                        i5 += i2 + h3;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (ar(i4, obj)) {
                        n = p.k(i6, (cir) diy.f14260f.p(j, obj), ah(i4));
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    n = ave.aj(i6, (List) diy.f14260f.p(j, obj));
                    i5 += n;
                    break;
                case 19:
                    n = ave.u(i6, (List) diy.f14260f.p(j, obj));
                    i5 += n;
                    break;
                case 20:
                    List list = (List) diy.f14260f.p(j, obj);
                    Class cls = ave.f10911b;
                    if (list.size() != 0) {
                        n = dub.c(i6, list.size(), ave.ae(list));
                        i5 += n;
                        break;
                    }
                    n = 0;
                    i5 += n;
                case 21:
                    List list2 = (List) diy.f14260f.p(j, obj);
                    Class cls2 = ave.f10911b;
                    int size = list2.size();
                    if (size != 0) {
                        n = dub.c(i6, size, ave.h(list2));
                        i5 += n;
                        break;
                    }
                    n = 0;
                    i5 += n;
                case 22:
                    List list3 = (List) diy.f14260f.p(j, obj);
                    Class cls3 = ave.f10911b;
                    int size2 = list3.size();
                    if (size2 != 0) {
                        n = dub.c(i6, size2, ave.e(list3));
                        i5 += n;
                        break;
                    }
                    n = 0;
                    i5 += n;
                case 23:
                    n = ave.aj(i6, (List) diy.f14260f.p(j, obj));
                    i5 += n;
                    break;
                case 24:
                    n = ave.u(i6, (List) diy.f14260f.p(j, obj));
                    i5 += n;
                    break;
                case 25:
                    List list4 = (List) diy.f14260f.p(j, obj);
                    Class cls4 = ave.f10911b;
                    int size3 = list4.size();
                    i5 += size3 == 0 ? 0 : (p.h(i6 << 3) + 1) * size3;
                    break;
                case 26:
                    n = ave.ag(i6, (List) diy.f14260f.p(j, obj));
                    i5 += n;
                    break;
                case 27:
                    n = ave.t(i6, (List) diy.f14260f.p(j, obj), ah(i4));
                    i5 += n;
                    break;
                case 28:
                    n = ave.af(i6, (List) diy.f14260f.p(j, obj));
                    i5 += n;
                    break;
                case 29:
                    List list5 = (List) diy.f14260f.p(j, obj);
                    Class cls5 = ave.f10911b;
                    int size4 = list5.size();
                    if (size4 != 0) {
                        n = dub.c(i6, size4, ave.k(list5));
                        i5 += n;
                        break;
                    }
                    n = 0;
                    i5 += n;
                case 30:
                    List list6 = (List) diy.f14260f.p(j, obj);
                    Class cls6 = ave.f10911b;
                    int size5 = list6.size();
                    if (size5 != 0) {
                        n = dub.c(i6, size5, ave.r(list6));
                        i5 += n;
                        break;
                    }
                    n = 0;
                    i5 += n;
                case 31:
                    n = ave.u(i6, (List) diy.f14260f.p(j, obj));
                    i5 += n;
                    break;
                case 32:
                    n = ave.aj(i6, (List) diy.f14260f.p(j, obj));
                    i5 += n;
                    break;
                case 33:
                    List list7 = (List) diy.f14260f.p(j, obj);
                    Class cls7 = ave.f10911b;
                    int size6 = list7.size();
                    if (size6 != 0) {
                        n = dub.c(i6, size6, ave.s(list7));
                        i5 += n;
                        break;
                    }
                    n = 0;
                    i5 += n;
                case 34:
                    List list8 = (List) diy.f14260f.p(j, obj);
                    Class cls8 = ave.f10911b;
                    int size7 = list8.size();
                    if (size7 != 0) {
                        n = dub.c(i6, size7, ave.ai(list8));
                        i5 += n;
                        break;
                    }
                    n = 0;
                    i5 += n;
                case 35:
                    int j2 = ave.j((List) unsafe.getObject(obj, j));
                    if (j2 > 0) {
                        i5 = dub.j(j2, p.l(i6), j2, i5);
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int v2 = ave.v((List) unsafe.getObject(obj, j));
                    if (v2 > 0) {
                        i5 = dub.j(v2, p.l(i6), v2, i5);
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int ae = ave.ae((List) unsafe.getObject(obj, j));
                    if (ae > 0) {
                        i5 = dub.j(ae, p.l(i6), ae, i5);
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int h6 = ave.h((List) unsafe.getObject(obj, j));
                    if (h6 > 0) {
                        i5 = dub.j(h6, p.l(i6), h6, i5);
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int e2 = ave.e((List) unsafe.getObject(obj, j));
                    if (e2 > 0) {
                        i5 = dub.j(e2, p.l(i6), e2, i5);
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int j3 = ave.j((List) unsafe.getObject(obj, j));
                    if (j3 > 0) {
                        i5 = dub.j(j3, p.l(i6), j3, i5);
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int v3 = ave.v((List) unsafe.getObject(obj, j));
                    if (v3 > 0) {
                        i5 = dub.j(v3, p.l(i6), v3, i5);
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j);
                    Class cls9 = ave.f10911b;
                    int size8 = list9.size();
                    if (size8 > 0) {
                        i5 = dub.j(size8, p.l(i6), size8, i5);
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int k4 = ave.k((List) unsafe.getObject(obj, j));
                    if (k4 > 0) {
                        i5 = dub.j(k4, p.l(i6), k4, i5);
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int r4 = ave.r((List) unsafe.getObject(obj, j));
                    if (r4 > 0) {
                        i5 = dub.j(r4, p.l(i6), r4, i5);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int v4 = ave.v((List) unsafe.getObject(obj, j));
                    if (v4 > 0) {
                        i5 = dub.j(v4, p.l(i6), v4, i5);
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int j4 = ave.j((List) unsafe.getObject(obj, j));
                    if (j4 > 0) {
                        i5 = dub.j(j4, p.l(i6), j4, i5);
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int s = ave.s((List) unsafe.getObject(obj, j));
                    if (s > 0) {
                        i5 = dub.j(s, p.l(i6), s, i5);
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int ai = ave.ai((List) unsafe.getObject(obj, j));
                    if (ai > 0) {
                        i5 = dub.j(ai, p.l(i6), ai, i5);
                        break;
                    } else {
                        break;
                    }
                case 49:
                    List list10 = (List) diy.f14260f.p(j, obj);
                    ciw ah = ah(i4);
                    Class cls10 = ave.f10911b;
                    int size9 = list10.size();
                    if (size9 != 0) {
                        i3 = 0;
                        for (int i8 = 0; i8 < size9; i8++) {
                            i3 += p.k(i6, (cir) list10.get(i8), ah);
                        }
                    } else {
                        i3 = 0;
                    }
                    i5 += i3;
                    break;
                case 50:
                    aoq.a(diy.f14260f.p(j, obj), an(i4));
                    break;
                case 51:
                    if (ai(i6, i4, obj)) {
                        i5 = dub.d(i6 << 3, 8, i5);
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (ai(i6, i4, obj)) {
                        i5 = dub.d(i6 << 3, 4, i5);
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (ai(i6, i4, obj)) {
                        long aa = aa(j, obj);
                        h = p.h(i6 << 3);
                        i = p.i(aa);
                        n = i + h;
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (ai(i6, i4, obj)) {
                        long aa2 = aa(j, obj);
                        h = p.h(i6 << 3);
                        i = p.i(aa2);
                        n = i + h;
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (ai(i6, i4, obj)) {
                        int y = y(j, obj);
                        h2 = p.h(i6 << 3);
                        g2 = p.g(y);
                        n = g2 + h2;
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (ai(i6, i4, obj)) {
                        i5 = dub.d(i6 << 3, 8, i5);
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (ai(i6, i4, obj)) {
                        i5 = dub.d(i6 << 3, 4, i5);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (ai(i6, i4, obj)) {
                        i5 = dub.d(i6 << 3, 1, i5);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (ai(i6, i4, obj)) {
                        Object p2 = diy.f14260f.p(j, obj);
                        if (p2 instanceof cyb) {
                            int h7 = p.h(i6 << 3);
                            int c4 = ((cyb) p2).c();
                            i5 = dub.j(c4, c4, h7, i5);
                            break;
                        } else {
                            h2 = p.h(i6 << 3);
                            g2 = p.j((String) p2);
                            n = g2 + h2;
                            i5 += n;
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (ai(i6, i4, obj)) {
                        n = ave.n(i6, diy.f14260f.p(j, obj), ah(i4));
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (ai(i6, i4, obj)) {
                        cyb cybVar2 = (cyb) diy.f14260f.p(j, obj);
                        int h8 = p.h(i6 << 3);
                        int c5 = cybVar2.c();
                        i5 = dub.j(c5, c5, h8, i5);
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (ai(i6, i4, obj)) {
                        i5 = dub.d(y(j, obj), p.h(i6 << 3), i5);
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (ai(i6, i4, obj)) {
                        int y2 = y(j, obj);
                        h2 = p.h(i6 << 3);
                        g2 = p.g(y2);
                        n = g2 + h2;
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (ai(i6, i4, obj)) {
                        i5 = dub.d(i6 << 3, 4, i5);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (ai(i6, i4, obj)) {
                        i5 = dub.d(i6 << 3, 8, i5);
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (ai(i6, i4, obj)) {
                        int y3 = y(j, obj);
                        i5 = dub.d((y3 >> 31) ^ (y3 + y3), p.h(i6 << 3), i5);
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (ai(i6, i4, obj)) {
                        long aa3 = aa(j, obj);
                        h3 = p.h(i6 << 3);
                        i2 = p.i((aa3 + aa3) ^ (aa3 >> 63));
                        i5 += i2 + h3;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (ai(i6, i4, obj)) {
                        n = p.k(i6, (cir) diy.f14260f.p(j, obj), ah(i4));
                        i5 += n;
                        break;
                    } else {
                        break;
                    }
            }
            i4 += 3;
        }
    }

    public final ciw ah(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.q;
        ciw ciwVar = (ciw) objArr[i3];
        if (ciwVar != null) {
            return ciwVar;
        }
        ciw d2 = auv.f10895a.d((Class) objArr[i3 + 1]);
        objArr[i3] = d2;
        return d2;
    }

    public final boolean ai(int i, int i2, Object obj) {
        return diy.f14260f.r((long) (this.n[i2 + 2] & 1048575), obj) == i;
    }

    public final void aj(Object obj, long j, int i) {
        Unsafe unsafe = f15324b;
        Object an = an(i);
        Object object = unsafe.getObject(obj, j);
        if (!((dhf) object).c()) {
            dhf d2 = dhf.f14168a.d();
            aoq.b(d2, object);
            unsafe.putObject(obj, j, d2);
        }
        throw awf.j(an);
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0201, code lost:
    
        r14 = r14 | r21;
        r4 = r31;
        r9 = r1;
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0207, code lost:
    
        r1 = r8;
        r8 = r10;
        r5 = r11;
        r7 = r12;
        r6 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x024a, code lost:
    
        r14 = r14 | r21;
        r4 = r31;
        r9 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x026c, code lost:
    
        r7 = r1;
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x03bb, code lost:
    
        r6 = r0;
        r8 = r2;
        r2 = r3;
        r11 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x039f, code lost:
    
        r7 = r12;
        r14 = r17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int ak(Object obj, byte[] bArr, int i, int i2, int i3, fks fksVar) {
        ecy ecyVar;
        int i4;
        Unsafe unsafe;
        int[] iArr;
        Object obj2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        Object obj3;
        Unsafe unsafe2;
        int i11;
        byte[] bArr2;
        int i12;
        Unsafe unsafe3;
        int i13;
        int ay;
        byte[] bArr3;
        int as;
        Object obj4;
        int i14;
        int i15;
        int i16;
        int at;
        ecy ecyVar2 = this;
        Object obj5 = obj;
        byte[] bArr4 = bArr;
        int i17 = i2;
        fks fksVar2 = fksVar;
        Unsafe unsafe4 = f15324b;
        int i18 = i;
        int i19 = 0;
        int i20 = -1;
        int i21 = 0;
        int i22 = 1048575;
        int i23 = 0;
        while (true) {
            int i24 = 1048575;
            while (true) {
                int[] iArr2 = ecyVar2.n;
                if (i18 < i17) {
                    int i25 = i18 + 1;
                    int i26 = bArr4[i18];
                    if (i26 < 0) {
                        i25 = buj.z(i26, bArr4, i25, fksVar2);
                        i26 = fksVar2.f16943a;
                    }
                    int i27 = i25;
                    int i28 = i26;
                    int i29 = i28 >>> 3;
                    int i30 = i21;
                    int i31 = i28 & 7;
                    int i32 = ecyVar2.l;
                    int i33 = ecyVar2.s;
                    int ad = i29 > i20 ? (i29 < i33 || i29 > i32) ? -1 : ecyVar2.ad(i29, i30 / 3) : (i29 < i33 || i29 > i32) ? -1 : ecyVar2.ad(i29, 0);
                    if (ad == -1) {
                        ecyVar = ecyVar2;
                        i5 = i28;
                        i4 = i22;
                        unsafe = unsafe4;
                        iArr = iArr2;
                        i6 = i29;
                        i21 = 0;
                        obj2 = obj5;
                        i7 = i27;
                    } else {
                        int i34 = iArr2[ad + 1];
                        int v = v(i34);
                        i6 = i29;
                        long j = i34 & i24;
                        if (v <= 17) {
                            int i35 = iArr2[ad + 2];
                            int i36 = 1 << (i35 >>> 20);
                            int i37 = i35 & i24;
                            if (i37 != i22) {
                                iArr = iArr2;
                                i8 = v;
                                if (i22 != 1048575) {
                                    unsafe4.putInt(obj5, i22, i23);
                                }
                                i9 = i37;
                                i23 = unsafe4.getInt(obj5, i37);
                            } else {
                                iArr = iArr2;
                                i8 = v;
                                i9 = i22;
                            }
                            switch (i8) {
                                case 0:
                                    bArr3 = bArr;
                                    i5 = i28;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    i11 = i27;
                                    if (i31 == 1) {
                                        diy.f14260f.c(obj5, j, Double.longBitsToDouble(buj.af(i11, bArr3)));
                                        i18 = i11 + 8;
                                        i23 |= i36;
                                        i17 = i2;
                                        unsafe4 = unsafe3;
                                        break;
                                    } else {
                                        break;
                                    }
                                case 1:
                                    bArr3 = bArr;
                                    i5 = i28;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    i11 = i27;
                                    if (i31 == 5) {
                                        diy.f14260f.e(obj5, j, Float.intBitsToFloat(buj.ae(bArr3, i11)));
                                        i18 = i11 + 4;
                                        break;
                                    } else {
                                        break;
                                    }
                                case 2:
                                case 3:
                                    bArr3 = bArr;
                                    i5 = i28;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    i11 = i27;
                                    if (i31 == 0) {
                                        int ai = buj.ai(bArr3, i11, fksVar2);
                                        unsafe3.putLong(obj5, j, fksVar2.f16944b);
                                        i23 |= i36;
                                        i17 = i2;
                                        unsafe4 = unsafe3;
                                        i18 = ai;
                                        break;
                                    } else {
                                        break;
                                    }
                                case 4:
                                case 11:
                                    bArr3 = bArr;
                                    i5 = i28;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    i11 = i27;
                                    if (i31 == 0) {
                                        as = buj.as(bArr3, i11, fksVar2);
                                        unsafe3.putInt(obj5, j, fksVar2.f16943a);
                                        break;
                                    } else {
                                        break;
                                    }
                                case 5:
                                case 14:
                                    bArr3 = bArr;
                                    i5 = i28;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    if (i31 == 1) {
                                        unsafe3.putLong(obj5, j, buj.af(i27, bArr3));
                                        i18 = i27 + 8;
                                        break;
                                    } else {
                                        i11 = i27;
                                        break;
                                    }
                                case 6:
                                case 13:
                                    bArr3 = bArr;
                                    i5 = i28;
                                    i12 = i27;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    if (i31 == 5) {
                                        unsafe3.putInt(obj5, j, buj.ae(bArr3, i12));
                                        i18 = i12 + 4;
                                        break;
                                    } else {
                                        break;
                                    }
                                case 7:
                                    bArr3 = bArr;
                                    i5 = i28;
                                    i12 = i27;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    if (i31 == 0) {
                                        as = buj.ai(bArr3, i12, fksVar2);
                                        diy.f14260f.g(obj5, j, fksVar2.f16944b != 0);
                                        break;
                                    } else {
                                        break;
                                    }
                                case 8:
                                    bArr3 = bArr;
                                    i5 = i28;
                                    i12 = i27;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    if (i31 == 2) {
                                        as = (i34 & C.ENCODING_PCM_A_LAW) == 0 ? buj.r(bArr3, i12, fksVar2) : buj.ap(bArr3, i12, fksVar2);
                                        unsafe3.putObject(obj5, j, fksVar2.f16945c);
                                        break;
                                    } else {
                                        break;
                                    }
                                case 9:
                                    bArr2 = bArr;
                                    i5 = i28;
                                    i12 = i27;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    i13 = i2;
                                    if (i31 != 2) {
                                        break;
                                    } else {
                                        ay = buj.ay(ecyVar2.ah(i10), bArr2, i12, i13, fksVar2);
                                        if ((i23 & i36) == 0) {
                                            unsafe3.putObject(obj5, j, fksVar2.f16945c);
                                        } else {
                                            unsafe3.putObject(obj5, j, dhz.d(unsafe3.getObject(obj5, j), fksVar2.f16945c));
                                        }
                                        i23 |= i36;
                                        i18 = ay;
                                        i17 = i13;
                                        i19 = i5;
                                        i21 = i10;
                                        i20 = i6;
                                        i24 = 1048575;
                                        unsafe4 = unsafe3;
                                        bArr4 = bArr2;
                                        i22 = i9;
                                    }
                                case 10:
                                    bArr2 = bArr;
                                    i5 = i28;
                                    i12 = i27;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    i13 = i2;
                                    if (i31 != 2) {
                                        break;
                                    } else {
                                        ay = buj.p(bArr2, i12, fksVar2);
                                        unsafe3.putObject(obj5, j, fksVar2.f16945c);
                                        i23 |= i36;
                                        i18 = ay;
                                        i17 = i13;
                                        i19 = i5;
                                        i21 = i10;
                                        i20 = i6;
                                        i24 = 1048575;
                                        unsafe4 = unsafe3;
                                        bArr4 = bArr2;
                                        i22 = i9;
                                    }
                                case 12:
                                    bArr2 = bArr;
                                    i5 = i28;
                                    i12 = i27;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    i13 = i2;
                                    if (i31 != 0) {
                                        break;
                                    } else {
                                        ay = buj.as(bArr2, i12, fksVar2);
                                        int i38 = fksVar2.f16943a;
                                        dcm ac = ecyVar2.ac(i10);
                                        if (ac == null || ac.zza(i38)) {
                                            unsafe3.putInt(obj5, j, i38);
                                            i23 |= i36;
                                            i18 = ay;
                                            i17 = i13;
                                            i19 = i5;
                                            i21 = i10;
                                            i20 = i6;
                                            i24 = 1048575;
                                            unsafe4 = unsafe3;
                                            bArr4 = bArr2;
                                            i22 = i9;
                                        } else {
                                            ab(obj5).j(i5, Long.valueOf(i38));
                                            i18 = ay;
                                            i17 = i13;
                                            i19 = i5;
                                            i21 = i10;
                                            i20 = i6;
                                            i24 = 1048575;
                                            unsafe4 = unsafe3;
                                            bArr4 = bArr2;
                                            i22 = i9;
                                        }
                                    }
                                    break;
                                case 15:
                                    bArr2 = bArr;
                                    i5 = i28;
                                    i12 = i27;
                                    fksVar2 = fksVar;
                                    i10 = ad;
                                    unsafe3 = unsafe4;
                                    i13 = i2;
                                    if (i31 != 0) {
                                        break;
                                    } else {
                                        ay = buj.as(bArr2, i12, fksVar2);
                                        unsafe3.putInt(obj5, j, awt.am(fksVar2.f16943a));
                                        i23 |= i36;
                                        i18 = ay;
                                        i17 = i13;
                                        i19 = i5;
                                        i21 = i10;
                                        i20 = i6;
                                        i24 = 1048575;
                                        unsafe4 = unsafe3;
                                        bArr4 = bArr2;
                                        i22 = i9;
                                    }
                                case 16:
                                    bArr2 = bArr;
                                    i5 = i28;
                                    i12 = i27;
                                    if (i31 != 0) {
                                        i10 = ad;
                                        unsafe3 = unsafe4;
                                        break;
                                    } else {
                                        int ai2 = buj.ai(bArr2, i12, fksVar);
                                        fksVar2 = fksVar;
                                        i10 = ad;
                                        unsafe3 = unsafe4;
                                        i13 = i2;
                                        unsafe3.putLong(obj5, j, awt.m(fksVar.f16944b));
                                        i23 |= i36;
                                        i18 = ai2;
                                        i17 = i13;
                                        i19 = i5;
                                        i21 = i10;
                                        i20 = i6;
                                        i24 = 1048575;
                                        unsafe4 = unsafe3;
                                        bArr4 = bArr2;
                                        i22 = i9;
                                    }
                                default:
                                    if (i31 != 3) {
                                        i5 = i28;
                                        i10 = ad;
                                        obj3 = obj5;
                                        unsafe2 = unsafe4;
                                        i11 = i27;
                                        break;
                                    } else {
                                        i18 = buj.s(ecyVar2.ah(ad), bArr, i27, i2, (i6 << 3) | 4, fksVar);
                                        if ((i23 & i36) == 0) {
                                            unsafe4.putObject(obj5, j, fksVar.f16945c);
                                        } else {
                                            unsafe4.putObject(obj5, j, dhz.d(unsafe4.getObject(obj5, j), fksVar.f16945c));
                                        }
                                        i23 |= i36;
                                        i21 = ad;
                                        fksVar2 = fksVar;
                                        bArr4 = bArr;
                                        i22 = i9;
                                        i19 = i28;
                                        i20 = i6;
                                        i24 = 1048575;
                                        i17 = i2;
                                    }
                            }
                        } else {
                            iArr = iArr2;
                            int i39 = ad;
                            Object obj6 = obj5;
                            Unsafe unsafe5 = unsafe4;
                            if (v == 27) {
                                if (i31 == 2) {
                                    cwe cweVar = (cwe) unsafe5.getObject(obj6, j);
                                    if (!((gzj) cweVar).f19052f) {
                                        int size = cweVar.size();
                                        cweVar = cweVar.zzd(size == 0 ? 10 : size + size);
                                        unsafe5.putObject(obj6, j, cweVar);
                                    }
                                    int aq = buj.aq(ecyVar2.ah(i39), i28, bArr, i27, i2, cweVar, fksVar);
                                    obj5 = obj;
                                    i17 = i2;
                                    fksVar2 = fksVar;
                                    i18 = aq;
                                    unsafe4 = unsafe5;
                                    i19 = i28;
                                    i21 = i39;
                                    i20 = i6;
                                    i24 = 1048575;
                                    bArr4 = bArr;
                                } else {
                                    obj4 = obj;
                                    i4 = i22;
                                    i16 = i27;
                                    unsafe = unsafe5;
                                    i15 = i28;
                                    i14 = i23;
                                }
                            } else if (v <= 49) {
                                unsafe = unsafe5;
                                i4 = i22;
                                i14 = i23;
                                at = ecyVar2.af(obj, bArr, i27, i2, i28, i6, i31, i39, i34, v, j, fksVar);
                                obj5 = obj;
                                i5 = i28;
                                i39 = i39;
                                if (at != i27) {
                                    bArr4 = bArr;
                                    i17 = i2;
                                    fksVar2 = fksVar;
                                    i18 = at;
                                    i19 = i5;
                                    i21 = i39;
                                    i22 = i4;
                                    i23 = i14;
                                    i20 = i6;
                                    unsafe4 = unsafe;
                                } else {
                                    ecyVar = ecyVar2;
                                    obj2 = obj5;
                                    i7 = at;
                                }
                            } else {
                                obj4 = obj;
                                i4 = i22;
                                unsafe = unsafe5;
                                i14 = i23;
                                i15 = i28;
                                i16 = i27;
                                if (v != 50) {
                                    at = ecyVar2.at(obj4, bArr, i16, i2, i15, i6, i31, i34, v, j, i39, fksVar);
                                    obj2 = obj4;
                                    i5 = i15;
                                    ecyVar = ecyVar2;
                                    if (at != i16) {
                                        bArr4 = bArr;
                                        i17 = i2;
                                        fksVar2 = fksVar;
                                        ecyVar2 = ecyVar;
                                        i18 = at;
                                        obj5 = obj2;
                                        i19 = i5;
                                        i21 = i39;
                                        i22 = i4;
                                        i23 = i14;
                                        i20 = i6;
                                        unsafe4 = unsafe;
                                    } else {
                                        i7 = at;
                                    }
                                } else if (i31 == 2) {
                                    ecyVar2.aj(obj4, j, i39);
                                    throw null;
                                }
                            }
                        }
                    }
                } else {
                    ecyVar = ecyVar2;
                    i4 = i22;
                    unsafe = unsafe4;
                    iArr = iArr2;
                    obj2 = obj5;
                }
            }
            unsafe2 = unsafe3;
            obj3 = obj5;
            i11 = i12;
            ecyVar = ecyVar2;
            obj2 = obj3;
            unsafe = unsafe2;
            i7 = i11;
            i4 = i9;
            i21 = i10;
            if (i5 != i3 || i3 == 0) {
                bArr4 = bArr;
                fksVar2 = fksVar;
                i17 = i2;
                ecyVar2 = ecyVar;
                i19 = i5;
                i20 = i6;
                unsafe4 = unsafe;
                i18 = buj.az(i5, bArr4, i7, i2, ab(obj2), fksVar);
                obj5 = obj2;
                i22 = i4;
            } else {
                i17 = i2;
                i18 = i7;
                i19 = i5;
            }
        }
        int i40 = i4;
        if (i40 != 1048575) {
            unsafe.putInt(obj2, i40, i23);
        }
        for (int i41 = ecyVar.f15325c; i41 < ecyVar.p; i41++) {
            int i42 = ecyVar.t[i41];
            int i43 = iArr[i42];
            Object p = diy.f14260f.p(ecyVar.ao(i42) & 1048575, obj2);
            if (p != null && ecyVar.ac(i42) != null) {
                ecyVar.an(i42).getClass();
                throw new ClassCastException();
            }
        }
        if (i3 == 0) {
            if (i18 != i17) {
                throw new drq("Failed to parse the message.");
            }
        } else if (i18 > i17 || i19 != i3) {
            throw new drq("Failed to parse the message.");
        }
        return i18;
    }

    public final boolean al(cys cysVar, cys cysVar2, int i) {
        return ar(i, cysVar) == ar(i, cysVar2);
    }

    public final void am(Object obj, int i, Object obj2) {
        int ao = ao(i);
        int i2 = this.n[i];
        long j = ao & 1048575;
        if (ai(i2, i, obj2)) {
            Object p = ai(i2, i, obj) ? diy.f14260f.p(j, obj) : null;
            Object p2 = diy.f14260f.p(j, obj2);
            if (p != null && p2 != null) {
                diy.h(j, obj, dhz.d(p, p2));
                diy.s(obj, r1[i + 2] & 1048575, i2);
            } else if (p2 != null) {
                diy.h(j, obj, p2);
                diy.s(obj, r1[i + 2] & 1048575, i2);
            }
        }
    }

    public final Object an(int i) {
        int i2 = i / 3;
        return this.q[i2 + i2];
    }

    public final int ao(int i) {
        return this.n[i + 1];
    }

    public final void ap(int i, Object obj) {
        int i2 = this.n[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        diy.s(obj, j, (1 << (i2 >>> 20)) | diy.f14260f.r(j, obj));
    }

    public final int aq(Object obj) {
        int i;
        int h;
        int i2;
        int h2;
        int g2;
        int n;
        int i3;
        Unsafe unsafe = f15324b;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1048575;
        while (true) {
            int[] iArr = this.n;
            if (i5 >= iArr.length) {
                this.k.getClass();
                return ((cys) obj).zzc.i() + i6;
            }
            int ao = ao(i5);
            int i9 = iArr[i5];
            int v = v(ao);
            if (v <= 17) {
                int i10 = iArr[i5 + 2];
                int i11 = i10 & i4;
                i = 1 << (i10 >>> 20);
                if (i11 != i8) {
                    i7 = unsafe.getInt(obj, i11);
                    i8 = i11;
                }
            } else {
                i = 0;
            }
            long j = ao & i4;
            switch (v) {
                case 0:
                    if ((i7 & i) != 0) {
                        i6 = dub.d(i9 << 3, 8, i6);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i7 & i) != 0) {
                        i6 = dub.d(i9 << 3, 4, i6);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i & i7) != 0) {
                        long j2 = unsafe.getLong(obj, j);
                        h = p.h(i9 << 3);
                        i2 = p.i(j2);
                        n = i2 + h;
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i & i7) != 0) {
                        long j3 = unsafe.getLong(obj, j);
                        h = p.h(i9 << 3);
                        i2 = p.i(j3);
                        n = i2 + h;
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i & i7) != 0) {
                        int i12 = unsafe.getInt(obj, j);
                        h2 = p.h(i9 << 3);
                        g2 = p.g(i12);
                        n = g2 + h2;
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i7 & i) != 0) {
                        i6 = dub.d(i9 << 3, 8, i6);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i7 & i) != 0) {
                        i6 = dub.d(i9 << 3, 4, i6);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i7 & i) != 0) {
                        i6 = dub.d(i9 << 3, 1, i6);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i & i7) != 0) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof cyb) {
                            int h3 = p.h(i9 << 3);
                            int c2 = ((cyb) object).c();
                            i6 = dub.j(c2, c2, h3, i6);
                            break;
                        } else {
                            h2 = p.h(i9 << 3);
                            g2 = p.j((String) object);
                            n = g2 + h2;
                            i6 += n;
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if ((i & i7) != 0) {
                        n = ave.n(i9, unsafe.getObject(obj, j), ah(i5));
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i & i7) != 0) {
                        cyb cybVar = (cyb) unsafe.getObject(obj, j);
                        int h4 = p.h(i9 << 3);
                        int c3 = cybVar.c();
                        i6 = dub.j(c3, c3, h4, i6);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i & i7) != 0) {
                        i6 = dub.d(unsafe.getInt(obj, j), p.h(i9 << 3), i6);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i & i7) != 0) {
                        int i13 = unsafe.getInt(obj, j);
                        h2 = p.h(i9 << 3);
                        g2 = p.g(i13);
                        n = g2 + h2;
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i7 & i) != 0) {
                        i6 = dub.d(i9 << 3, 4, i6);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i7 & i) != 0) {
                        i6 = dub.d(i9 << 3, 8, i6);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i & i7) != 0) {
                        int i14 = unsafe.getInt(obj, j);
                        i6 = dub.d((i14 >> 31) ^ (i14 + i14), p.h(i9 << 3), i6);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i & i7) != 0) {
                        long j4 = unsafe.getLong(obj, j);
                        h = p.h(i9 << 3);
                        i2 = p.i((j4 >> 63) ^ (j4 + j4));
                        n = i2 + h;
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i & i7) != 0) {
                        n = p.k(i9, (cir) unsafe.getObject(obj, j), ah(i5));
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    n = ave.aj(i9, (List) unsafe.getObject(obj, j));
                    i6 += n;
                    break;
                case 19:
                    n = ave.u(i9, (List) unsafe.getObject(obj, j));
                    i6 += n;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j);
                    Class cls = ave.f10911b;
                    if (list.size() != 0) {
                        n = dub.c(i9, list.size(), ave.ae(list));
                        i6 += n;
                        break;
                    }
                    n = 0;
                    i6 += n;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j);
                    Class cls2 = ave.f10911b;
                    int size = list2.size();
                    if (size != 0) {
                        n = dub.c(i9, size, ave.h(list2));
                        i6 += n;
                        break;
                    }
                    n = 0;
                    i6 += n;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j);
                    Class cls3 = ave.f10911b;
                    int size2 = list3.size();
                    if (size2 != 0) {
                        n = dub.c(i9, size2, ave.e(list3));
                        i6 += n;
                        break;
                    }
                    n = 0;
                    i6 += n;
                case 23:
                    n = ave.aj(i9, (List) unsafe.getObject(obj, j));
                    i6 += n;
                    break;
                case 24:
                    n = ave.u(i9, (List) unsafe.getObject(obj, j));
                    i6 += n;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j);
                    Class cls4 = ave.f10911b;
                    int size3 = list4.size();
                    i6 += size3 == 0 ? 0 : (p.h(i9 << 3) + 1) * size3;
                    break;
                case 26:
                    n = ave.ag(i9, (List) unsafe.getObject(obj, j));
                    i6 += n;
                    break;
                case 27:
                    n = ave.t(i9, (List) unsafe.getObject(obj, j), ah(i5));
                    i6 += n;
                    break;
                case 28:
                    n = ave.af(i9, (List) unsafe.getObject(obj, j));
                    i6 += n;
                    break;
                case 29:
                    List list5 = (List) unsafe.getObject(obj, j);
                    Class cls5 = ave.f10911b;
                    int size4 = list5.size();
                    if (size4 != 0) {
                        n = dub.c(i9, size4, ave.k(list5));
                        i6 += n;
                        break;
                    }
                    n = 0;
                    i6 += n;
                case 30:
                    List list6 = (List) unsafe.getObject(obj, j);
                    Class cls6 = ave.f10911b;
                    int size5 = list6.size();
                    if (size5 != 0) {
                        n = dub.c(i9, size5, ave.r(list6));
                        i6 += n;
                        break;
                    }
                    n = 0;
                    i6 += n;
                case 31:
                    n = ave.u(i9, (List) unsafe.getObject(obj, j));
                    i6 += n;
                    break;
                case 32:
                    n = ave.aj(i9, (List) unsafe.getObject(obj, j));
                    i6 += n;
                    break;
                case 33:
                    List list7 = (List) unsafe.getObject(obj, j);
                    Class cls7 = ave.f10911b;
                    int size6 = list7.size();
                    if (size6 != 0) {
                        n = dub.c(i9, size6, ave.s(list7));
                        i6 += n;
                        break;
                    }
                    n = 0;
                    i6 += n;
                case 34:
                    List list8 = (List) unsafe.getObject(obj, j);
                    Class cls8 = ave.f10911b;
                    int size7 = list8.size();
                    if (size7 != 0) {
                        n = dub.c(i9, size7, ave.ai(list8));
                        i6 += n;
                        break;
                    }
                    n = 0;
                    i6 += n;
                case 35:
                    int j5 = ave.j((List) unsafe.getObject(obj, j));
                    if (j5 > 0) {
                        i6 = dub.j(j5, p.l(i9), j5, i6);
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int v2 = ave.v((List) unsafe.getObject(obj, j));
                    if (v2 > 0) {
                        i6 = dub.j(v2, p.l(i9), v2, i6);
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int ae = ave.ae((List) unsafe.getObject(obj, j));
                    if (ae > 0) {
                        i6 = dub.j(ae, p.l(i9), ae, i6);
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int h5 = ave.h((List) unsafe.getObject(obj, j));
                    if (h5 > 0) {
                        i6 = dub.j(h5, p.l(i9), h5, i6);
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int e2 = ave.e((List) unsafe.getObject(obj, j));
                    if (e2 > 0) {
                        i6 = dub.j(e2, p.l(i9), e2, i6);
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int j6 = ave.j((List) unsafe.getObject(obj, j));
                    if (j6 > 0) {
                        i6 = dub.j(j6, p.l(i9), j6, i6);
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int v3 = ave.v((List) unsafe.getObject(obj, j));
                    if (v3 > 0) {
                        i6 = dub.j(v3, p.l(i9), v3, i6);
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j);
                    Class cls9 = ave.f10911b;
                    int size8 = list9.size();
                    if (size8 > 0) {
                        i6 = dub.j(size8, p.l(i9), size8, i6);
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int k = ave.k((List) unsafe.getObject(obj, j));
                    if (k > 0) {
                        i6 = dub.j(k, p.l(i9), k, i6);
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int r = ave.r((List) unsafe.getObject(obj, j));
                    if (r > 0) {
                        i6 = dub.j(r, p.l(i9), r, i6);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int v4 = ave.v((List) unsafe.getObject(obj, j));
                    if (v4 > 0) {
                        i6 = dub.j(v4, p.l(i9), v4, i6);
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int j7 = ave.j((List) unsafe.getObject(obj, j));
                    if (j7 > 0) {
                        i6 = dub.j(j7, p.l(i9), j7, i6);
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int s = ave.s((List) unsafe.getObject(obj, j));
                    if (s > 0) {
                        i6 = dub.j(s, p.l(i9), s, i6);
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int ai = ave.ai((List) unsafe.getObject(obj, j));
                    if (ai > 0) {
                        i6 = dub.j(ai, p.l(i9), ai, i6);
                        break;
                    } else {
                        break;
                    }
                case 49:
                    List list10 = (List) unsafe.getObject(obj, j);
                    ciw ah = ah(i5);
                    Class cls10 = ave.f10911b;
                    int size9 = list10.size();
                    if (size9 != 0) {
                        i3 = 0;
                        for (int i15 = 0; i15 < size9; i15++) {
                            i3 += p.k(i9, (cir) list10.get(i15), ah);
                        }
                    } else {
                        i3 = 0;
                    }
                    i6 += i3;
                    break;
                case 50:
                    aoq.a(unsafe.getObject(obj, j), an(i5));
                    break;
                case 51:
                    if (ai(i9, i5, obj)) {
                        i6 = dub.d(i9 << 3, 8, i6);
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (ai(i9, i5, obj)) {
                        i6 = dub.d(i9 << 3, 4, i6);
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (ai(i9, i5, obj)) {
                        long aa = aa(j, obj);
                        h = p.h(i9 << 3);
                        i2 = p.i(aa);
                        n = i2 + h;
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (ai(i9, i5, obj)) {
                        long aa2 = aa(j, obj);
                        h = p.h(i9 << 3);
                        i2 = p.i(aa2);
                        n = i2 + h;
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (ai(i9, i5, obj)) {
                        int y = y(j, obj);
                        h2 = p.h(i9 << 3);
                        g2 = p.g(y);
                        n = g2 + h2;
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (ai(i9, i5, obj)) {
                        i6 = dub.d(i9 << 3, 8, i6);
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (ai(i9, i5, obj)) {
                        i6 = dub.d(i9 << 3, 4, i6);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (ai(i9, i5, obj)) {
                        i6 = dub.d(i9 << 3, 1, i6);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (ai(i9, i5, obj)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof cyb) {
                            int h6 = p.h(i9 << 3);
                            int c4 = ((cyb) object2).c();
                            i6 = dub.j(c4, c4, h6, i6);
                            break;
                        } else {
                            h2 = p.h(i9 << 3);
                            g2 = p.j((String) object2);
                            n = g2 + h2;
                            i6 += n;
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (ai(i9, i5, obj)) {
                        n = ave.n(i9, unsafe.getObject(obj, j), ah(i5));
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (ai(i9, i5, obj)) {
                        cyb cybVar2 = (cyb) unsafe.getObject(obj, j);
                        int h7 = p.h(i9 << 3);
                        int c5 = cybVar2.c();
                        i6 = dub.j(c5, c5, h7, i6);
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (ai(i9, i5, obj)) {
                        i6 = dub.d(y(j, obj), p.h(i9 << 3), i6);
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (ai(i9, i5, obj)) {
                        int y2 = y(j, obj);
                        h2 = p.h(i9 << 3);
                        g2 = p.g(y2);
                        n = g2 + h2;
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (ai(i9, i5, obj)) {
                        i6 = dub.d(i9 << 3, 4, i6);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (ai(i9, i5, obj)) {
                        i6 = dub.d(i9 << 3, 8, i6);
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (ai(i9, i5, obj)) {
                        int y3 = y(j, obj);
                        i6 = dub.d((y3 >> 31) ^ (y3 + y3), p.h(i9 << 3), i6);
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (ai(i9, i5, obj)) {
                        long aa3 = aa(j, obj);
                        h = p.h(i9 << 3);
                        i2 = p.i((aa3 >> 63) ^ (aa3 + aa3));
                        n = i2 + h;
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (ai(i9, i5, obj)) {
                        n = p.k(i9, (cir) unsafe.getObject(obj, j), ah(i5));
                        i6 += n;
                        break;
                    } else {
                        break;
                    }
            }
            i5 += 3;
            i4 = 1048575;
        }
    }

    public final boolean ar(int i, Object obj) {
        int i2 = this.n[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int ao = ao(i);
            long j2 = ao & 1048575;
            switch (v(ao)) {
                case 0:
                    if (Double.doubleToRawLongBits(diy.f14260f.d(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(diy.f14260f.f(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (diy.f14260f.k(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (diy.f14260f.k(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (diy.f14260f.r(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (diy.f14260f.k(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (diy.f14260f.r(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return diy.f14260f.h(j2, obj);
                case 8:
                    Object p = diy.f14260f.p(j2, obj);
                    if (p instanceof String) {
                        if (((String) p).isEmpty()) {
                            return false;
                        }
                    } else {
                        if (!(p instanceof cyb)) {
                            throw new IllegalArgumentException();
                        }
                        if (cyb.f13731d.equals(p)) {
                            return false;
                        }
                    }
                    break;
                case 9:
                    if (diy.f14260f.p(j2, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (cyb.f13731d.equals(diy.f14260f.p(j2, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (diy.f14260f.r(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (diy.f14260f.r(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (diy.f14260f.r(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (diy.f14260f.k(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (diy.f14260f.r(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (diy.f14260f.k(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (diy.f14260f.p(j2, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if ((diy.f14260f.r(j, obj) & (1 << (i2 >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:74:0x0099. Please report as an issue. */
    public final void as(Object obj, byte[] bArr, int i, int i2, fks fksVar) {
        int ad;
        Unsafe unsafe;
        Object obj2;
        int i3;
        int i4;
        int i5;
        int i6;
        Unsafe unsafe2;
        Object obj3;
        int i7;
        int ai;
        Object obj4;
        int i8;
        int i9;
        int i10;
        int at;
        ecy ecyVar = this;
        Object obj5 = obj;
        byte[] bArr2 = bArr;
        int i11 = i2;
        fks fksVar2 = fksVar;
        Unsafe unsafe3 = f15324b;
        int i12 = i;
        int i13 = -1;
        int i14 = 0;
        int i15 = 1048575;
        int i16 = 0;
        while (i12 < i11) {
            int i17 = i12 + 1;
            int i18 = bArr2[i12];
            if (i18 < 0) {
                i17 = buj.z(i18, bArr2, i17, fksVar2);
                i18 = fksVar2.f16943a;
            }
            int i19 = i17;
            int i20 = i18 >>> 3;
            int i21 = i18 & 7;
            int i22 = ecyVar.l;
            int i23 = ecyVar.s;
            if (i20 > i13) {
                ad = (i20 < i23 || i20 > i22) ? -1 : ecyVar.ad(i20, i14 / 3);
            } else {
                ad = (i20 < i23 || i20 > i22) ? -1 : ecyVar.ad(i20, 0);
            }
            int i24 = ad;
            if (i24 == -1) {
                unsafe = unsafe3;
                obj2 = obj5;
                i3 = i18;
                i4 = i19;
                i5 = 0;
            } else {
                int[] iArr = ecyVar.n;
                int i25 = iArr[i24 + 1];
                int v = v(i25);
                int i26 = i18;
                long j = i25 & 1048575;
                if (v <= 17) {
                    int i27 = iArr[i24 + 2];
                    int i28 = 1 << (i27 >>> 20);
                    int i29 = i27 & 1048575;
                    if (i29 != i15) {
                        int i30 = 1048575;
                        i6 = i25;
                        if (i15 != 1048575) {
                            unsafe3.putInt(obj5, i15, i16);
                            i30 = 1048575;
                        }
                        if (i29 != i30) {
                            i16 = unsafe3.getInt(obj5, i29);
                        }
                        i15 = i29;
                    } else {
                        i6 = i25;
                    }
                    switch (v) {
                        case 0:
                            i7 = i20;
                            if (i21 != 1) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                diy.f14260f.c(obj5, j, Double.longBitsToDouble(buj.af(i19, bArr2)));
                                i12 = i19 + 8;
                                i16 |= i28;
                                unsafe3 = unsafe3;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 1:
                            i7 = i20;
                            if (i21 != 5) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                diy.f14260f.e(obj5, j, Float.intBitsToFloat(buj.ae(bArr2, i19)));
                                i12 = i19 + 4;
                                i16 |= i28;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 2:
                        case 3:
                            i7 = i20;
                            if (i21 != 0) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                ai = buj.ai(bArr2, i19, fksVar2);
                                unsafe3.putLong(obj5, j, fksVar2.f16944b);
                                i16 |= i28;
                                i12 = ai;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 4:
                        case 11:
                            i7 = i20;
                            if (i21 != 0) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                int as = buj.as(bArr2, i19, fksVar2);
                                unsafe3.putInt(obj5, j, fksVar2.f16943a);
                                i16 |= i28;
                                i12 = as;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 5:
                        case 14:
                            i7 = i20;
                            if (i21 != 1) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                unsafe3.putLong(obj5, j, buj.af(i19, bArr2));
                                i12 = i19 + 8;
                                i16 |= i28;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 6:
                        case 13:
                            i7 = i20;
                            if (i21 != 5) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                unsafe3.putInt(obj5, j, buj.ae(bArr2, i19));
                                i12 = i19 + 4;
                                i16 |= i28;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 7:
                            i7 = i20;
                            if (i21 != 0) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                i12 = buj.ai(bArr2, i19, fksVar2);
                                diy.f14260f.g(obj5, j, fksVar2.f16944b != 0);
                                i16 |= i28;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 8:
                            i7 = i20;
                            if (i21 != 2) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                i12 = (i6 & C.ENCODING_PCM_A_LAW) == 0 ? buj.r(bArr2, i19, fksVar2) : buj.ap(bArr2, i19, fksVar2);
                                unsafe3.putObject(obj5, j, fksVar2.f16945c);
                                i16 |= i28;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 9:
                            i7 = i20;
                            if (i21 != 2) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                i12 = buj.ay(ecyVar.ah(i24), bArr2, i19, i11, fksVar2);
                                Object object = unsafe3.getObject(obj5, j);
                                if (object == null) {
                                    unsafe3.putObject(obj5, j, fksVar2.f16945c);
                                } else {
                                    unsafe3.putObject(obj5, j, dhz.d(object, fksVar2.f16945c));
                                }
                                i16 |= i28;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 10:
                            i7 = i20;
                            if (i21 != 2) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                i12 = buj.p(bArr2, i19, fksVar2);
                                unsafe3.putObject(obj5, j, fksVar2.f16945c);
                                i16 |= i28;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 12:
                            i7 = i20;
                            if (i21 != 0) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                i12 = buj.as(bArr2, i19, fksVar2);
                                unsafe3.putInt(obj5, j, fksVar2.f16943a);
                                i16 |= i28;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 15:
                            i7 = i20;
                            if (i21 != 0) {
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                i12 = buj.as(bArr2, i19, fksVar2);
                                unsafe3.putInt(obj5, j, awt.am(fksVar2.f16943a));
                                i16 |= i28;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        case 16:
                            if (i21 != 0) {
                                i7 = i20;
                                unsafe2 = unsafe3;
                                obj3 = obj5;
                                i3 = i26;
                                unsafe = unsafe2;
                                i5 = i24;
                                i4 = i19;
                                i20 = i7;
                                obj2 = obj3;
                                break;
                            } else {
                                ai = buj.ai(bArr2, i19, fksVar2);
                                i7 = i20;
                                unsafe3.putLong(obj5, j, awt.m(fksVar2.f16944b));
                                i16 |= i28;
                                i12 = ai;
                                i14 = i24;
                                i13 = i7;
                                break;
                            }
                        default:
                            unsafe2 = unsafe3;
                            obj3 = obj5;
                            i7 = i20;
                            i3 = i26;
                            unsafe = unsafe2;
                            i5 = i24;
                            i4 = i19;
                            i20 = i7;
                            obj2 = obj3;
                            break;
                    }
                } else {
                    Object obj6 = obj5;
                    Unsafe unsafe4 = unsafe3;
                    if (v != 27) {
                        i3 = i26;
                        if (v <= 49) {
                            i5 = i24;
                            i10 = i15;
                            unsafe = unsafe4;
                            i8 = i16;
                            i20 = i20;
                            at = ecyVar.af(obj, bArr, i19, i2, i3, i20, i21, i5, i25, v, j, fksVar);
                            obj5 = obj;
                            if (at != i19) {
                                fksVar2 = fksVar;
                                i13 = i20;
                                i12 = at;
                                i14 = i5;
                                i15 = i10;
                                i16 = i8;
                                unsafe3 = unsafe;
                                bArr2 = bArr;
                                i11 = i2;
                            } else {
                                obj2 = obj5;
                                i4 = at;
                                i15 = i10;
                                i16 = i8;
                            }
                        } else {
                            obj4 = obj;
                            unsafe = unsafe4;
                            i5 = i24;
                            i8 = i16;
                            i9 = i19;
                            i10 = i15;
                            i20 = i20;
                            if (v == 50) {
                                if (i21 == 2) {
                                    ecyVar.aj(obj4, j, i5);
                                    throw null;
                                }
                                obj2 = obj4;
                                i4 = i9;
                                i15 = i10;
                                i16 = i8;
                            } else {
                                at = ecyVar.at(obj4, bArr, i9, i2, i3, i20, i21, i25, v, j, i5, fksVar);
                                obj2 = obj4;
                                i5 = i5;
                                if (at != i9) {
                                    ecyVar = this;
                                    fksVar2 = fksVar;
                                    i13 = i20;
                                    i12 = at;
                                    i14 = i5;
                                    obj5 = obj2;
                                    i15 = i10;
                                    i16 = i8;
                                    unsafe3 = unsafe;
                                    bArr2 = bArr;
                                    i11 = i2;
                                } else {
                                    i4 = at;
                                    i15 = i10;
                                    i16 = i8;
                                }
                            }
                        }
                    } else if (i21 == 2) {
                        cwe cweVar = (cwe) unsafe4.getObject(obj6, j);
                        if (!((gzj) cweVar).f19052f) {
                            int size = cweVar.size();
                            cweVar = cweVar.zzd(size == 0 ? 10 : size + size);
                            unsafe4.putObject(obj6, j, cweVar);
                        }
                        int aq = buj.aq(ecyVar.ah(i24), i26, bArr2, i19, i11, cweVar, fksVar2);
                        obj5 = obj;
                        bArr2 = bArr;
                        fksVar2 = fksVar;
                        i12 = aq;
                        unsafe3 = unsafe4;
                        i14 = i24;
                        i13 = i20;
                        i11 = i2;
                    } else {
                        i3 = i26;
                        unsafe = unsafe4;
                        i5 = i24;
                        i10 = i15;
                        i8 = i16;
                        i9 = i19;
                        i20 = i20;
                        obj4 = obj;
                        obj2 = obj4;
                        i4 = i9;
                        i15 = i10;
                        i16 = i8;
                    }
                }
            }
            int az = buj.az(i3, bArr, i4, i2, ab(obj2), fksVar);
            bArr2 = bArr;
            fksVar2 = fksVar;
            i13 = i20;
            i14 = i5;
            obj5 = obj2;
            unsafe3 = unsafe;
            i11 = i2;
            i12 = az;
            ecyVar = this;
        }
        Unsafe unsafe5 = unsafe3;
        Object obj7 = obj5;
        int i31 = i11;
        int i32 = i15;
        int i33 = i16;
        if (i32 != 1048575) {
            unsafe5.putInt(obj7, i32, i33);
        }
        if (i12 != i31) {
            throw new drq("Failed to parse the message.");
        }
    }

    public final int at(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, fks fksVar) {
        Object object;
        Unsafe unsafe = f15324b;
        long j2 = this.n[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(buj.af(i, bArr))));
                unsafe.putInt(obj, j2, i4);
                return i + 8;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(buj.ae(bArr, i))));
                unsafe.putInt(obj, j2, i4);
                return i + 4;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                int ai = buj.ai(bArr, i, fksVar);
                unsafe.putObject(obj, j, Long.valueOf(fksVar.f16944b));
                unsafe.putInt(obj, j2, i4);
                return ai;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                int as = buj.as(bArr, i, fksVar);
                unsafe.putObject(obj, j, Integer.valueOf(fksVar.f16943a));
                unsafe.putInt(obj, j2, i4);
                return as;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Long.valueOf(buj.af(i, bArr)));
                unsafe.putInt(obj, j2, i4);
                return i + 8;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Integer.valueOf(buj.ae(bArr, i)));
                unsafe.putInt(obj, j2, i4);
                return i + 4;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                int ai2 = buj.ai(bArr, i, fksVar);
                unsafe.putObject(obj, j, Boolean.valueOf(fksVar.f16944b != 0));
                unsafe.putInt(obj, j2, i4);
                return ai2;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int as2 = buj.as(bArr, i, fksVar);
                int i9 = fksVar.f16943a;
                if (i9 == 0) {
                    unsafe.putObject(obj, j, "");
                } else {
                    if ((i6 & C.ENCODING_PCM_A_LAW) != 0) {
                        gua.f18749a.getClass();
                        if (!cuf.g(as2, bArr, as2 + i9)) {
                            throw drq.b();
                        }
                    }
                    unsafe.putObject(obj, j, new String(bArr, as2, i9, dhz.f14209a));
                    as2 += i9;
                }
                unsafe.putInt(obj, j2, i4);
                return as2;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                int ay = buj.ay(ah(i8), bArr, i, i2, fksVar);
                object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                if (object == null) {
                    unsafe.putObject(obj, j, fksVar.f16945c);
                } else {
                    unsafe.putObject(obj, j, dhz.d(object, fksVar.f16945c));
                }
                unsafe.putInt(obj, j2, i4);
                return ay;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                int p = buj.p(bArr, i, fksVar);
                unsafe.putObject(obj, j, fksVar.f16945c);
                unsafe.putInt(obj, j2, i4);
                return p;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int as3 = buj.as(bArr, i, fksVar);
                int i10 = fksVar.f16943a;
                dcm ac = ac(i8);
                if (ac != null && !ac.zza(i10)) {
                    ab(obj).j(i3, Long.valueOf(i10));
                    return as3;
                }
                unsafe.putObject(obj, j, Integer.valueOf(i10));
                unsafe.putInt(obj, j2, i4);
                return as3;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                int as4 = buj.as(bArr, i, fksVar);
                unsafe.putObject(obj, j, Integer.valueOf(awt.am(fksVar.f16943a)));
                unsafe.putInt(obj, j2, i4);
                return as4;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                int ai3 = buj.ai(bArr, i, fksVar);
                unsafe.putObject(obj, j, Long.valueOf(awt.m(fksVar.f16944b)));
                unsafe.putInt(obj, j2, i4);
                return ai3;
            case 68:
                if (i5 == 3) {
                    int s = buj.s(ah(i8), bArr, i, i2, (i3 & (-8)) | 4, fksVar);
                    object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object == null) {
                        unsafe.putObject(obj, j, fksVar.f16945c);
                    } else {
                        unsafe.putObject(obj, j, dhz.d(object, fksVar.f16945c));
                    }
                    unsafe.putInt(obj, j2, i4);
                    return s;
                }
                break;
        }
        return i;
    }

    public final void au(Object obj, aoy aoyVar) {
        int i;
        int i2;
        int i3;
        int[] iArr = this.n;
        int length = iArr.length;
        Unsafe unsafe = f15324b;
        int i4 = 0;
        int i5 = 1048575;
        for (int i6 = 0; i6 < length; i6 = i3 + 3) {
            int ao = ao(i6);
            int i7 = iArr[i6];
            int v = v(ao);
            if (v <= 17) {
                int i8 = iArr[i6 + 2];
                i = 1048575;
                int i9 = i8 & 1048575;
                if (i9 != i5) {
                    i4 = unsafe.getInt(obj, i9);
                    i5 = i9;
                }
                i2 = 1 << (i8 >>> 20);
            } else {
                i = 1048575;
                i2 = 0;
            }
            int i10 = i6;
            long j = ao & i;
            switch (v) {
                case 0:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        ((p) aoyVar.h).w(i7, Double.doubleToRawLongBits(diy.f14260f.d(j, obj)));
                        continue;
                    }
                case 1:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        ((p) aoyVar.h).p(i7, Float.floatToRawIntBits(diy.f14260f.f(j, obj)));
                    } else {
                        continue;
                    }
                case 2:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        ((p) aoyVar.h).o(i7, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                case 3:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        ((p) aoyVar.h).o(i7, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                case 4:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        int i11 = unsafe.getInt(obj, j);
                        p pVar = (p) aoyVar.h;
                        pVar.r(i7 << 3);
                        if (i11 >= 0) {
                            pVar.r(i11);
                        } else {
                            pVar.v(i11);
                        }
                    } else {
                        continue;
                    }
                case 5:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        ((p) aoyVar.h).w(i7, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                case 6:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        ((p) aoyVar.h).p(i7, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                case 7:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        boolean h = diy.f14260f.h(j, obj);
                        p pVar2 = (p) aoyVar.h;
                        pVar2.r(i7 << 3);
                        pVar2.q(h ? (byte) 1 : (byte) 0);
                    } else {
                        continue;
                    }
                case 8:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        z(i7, unsafe.getObject(obj, j), aoyVar);
                    } else {
                        continue;
                    }
                case 9:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        aoyVar.ah(i7, unsafe.getObject(obj, j), ah(i3));
                    } else {
                        continue;
                    }
                case 10:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        aoyVar.aa(i7, (cyb) unsafe.getObject(obj, j));
                    } else {
                        continue;
                    }
                case 11:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        int i12 = unsafe.getInt(obj, j);
                        p pVar3 = (p) aoyVar.h;
                        pVar3.r(i7 << 3);
                        pVar3.r(i12);
                    } else {
                        continue;
                    }
                case 12:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        int i13 = unsafe.getInt(obj, j);
                        p pVar4 = (p) aoyVar.h;
                        pVar4.r(i7 << 3);
                        if (i13 >= 0) {
                            pVar4.r(i13);
                        } else {
                            pVar4.v(i13);
                        }
                    } else {
                        continue;
                    }
                case 13:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        ((p) aoyVar.h).p(i7, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                case 14:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        ((p) aoyVar.h).w(i7, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                case 15:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        aoyVar.p(i7, unsafe.getInt(obj, j));
                    } else {
                        continue;
                    }
                case 16:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        aoyVar.af(i7, unsafe.getLong(obj, j));
                    } else {
                        continue;
                    }
                case 17:
                    i3 = i10;
                    if ((i2 & i4) != 0) {
                        aoyVar.z(i7, unsafe.getObject(obj, j), ah(i3));
                    } else {
                        continue;
                    }
                case 18:
                    i3 = i10;
                    ave.m(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 19:
                    i3 = i10;
                    ave.f(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 20:
                    i3 = i10;
                    ave.ac(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 21:
                    i3 = i10;
                    ave.ad(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 22:
                    i3 = i10;
                    ave.aa(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 23:
                    i3 = i10;
                    ave.ak(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 24:
                    i3 = i10;
                    ave.w(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 25:
                    i3 = i10;
                    ave.ab(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 26:
                    i3 = i10;
                    ave.i(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar);
                    break;
                case 27:
                    i3 = i10;
                    int i14 = iArr[i3];
                    List list = (List) unsafe.getObject(obj, j);
                    ciw ah = ah(i3);
                    Class cls = ave.f10911b;
                    if (list != null && !list.isEmpty()) {
                        for (int i15 = 0; i15 < list.size(); i15++) {
                            aoyVar.ah(i14, list.get(i15), ah);
                        }
                        break;
                    }
                    break;
                case 28:
                    i3 = i10;
                    ave.ah(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar);
                    break;
                case 29:
                    i3 = i10;
                    ave.y(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    break;
                case 30:
                    i3 = i10;
                    ave.p(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 31:
                    i3 = i10;
                    ave.g(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 32:
                    i3 = i10;
                    ave.o(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 33:
                    i3 = i10;
                    ave.z(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 34:
                    i3 = i10;
                    ave.l(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, false);
                    continue;
                case 35:
                    i3 = i10;
                    ave.m(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 36:
                    i3 = i10;
                    ave.f(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 37:
                    i3 = i10;
                    ave.ac(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 38:
                    i3 = i10;
                    ave.ad(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 39:
                    i3 = i10;
                    ave.aa(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 40:
                    i3 = i10;
                    ave.ak(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 41:
                    i3 = i10;
                    ave.w(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 42:
                    i3 = i10;
                    ave.ab(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 43:
                    i3 = i10;
                    ave.y(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 44:
                    i3 = i10;
                    ave.p(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 45:
                    i3 = i10;
                    ave.g(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 46:
                    i3 = i10;
                    ave.o(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 47:
                    i3 = i10;
                    ave.z(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 48:
                    i3 = i10;
                    ave.l(iArr[i3], (List) unsafe.getObject(obj, j), aoyVar, true);
                    break;
                case 49:
                    i3 = i10;
                    int i16 = iArr[i3];
                    List list2 = (List) unsafe.getObject(obj, j);
                    ciw ah2 = ah(i3);
                    Class cls2 = ave.f10911b;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i17 = 0; i17 < list2.size(); i17++) {
                            aoyVar.z(i16, list2.get(i17), ah2);
                        }
                        break;
                    }
                    break;
                case 50:
                    i3 = i10;
                    if (unsafe.getObject(obj, j) != null) {
                        an(i3).getClass();
                        throw new ClassCastException();
                    }
                    break;
                case 51:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        ((p) aoyVar.h).w(i7, Double.doubleToRawLongBits(((Double) diy.f14260f.p(j, obj)).doubleValue()));
                        break;
                    }
                    break;
                case 52:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        ((p) aoyVar.h).p(i7, Float.floatToRawIntBits(((Float) diy.f14260f.p(j, obj)).floatValue()));
                        break;
                    }
                    break;
                case 53:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        ((p) aoyVar.h).o(i7, aa(j, obj));
                        break;
                    }
                    break;
                case 54:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        ((p) aoyVar.h).o(i7, aa(j, obj));
                        break;
                    }
                    break;
                case 55:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        int y = y(j, obj);
                        p pVar5 = (p) aoyVar.h;
                        pVar5.r(i7 << 3);
                        if (y >= 0) {
                            pVar5.r(y);
                            break;
                        } else {
                            pVar5.v(y);
                            break;
                        }
                    }
                    break;
                case 56:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        ((p) aoyVar.h).w(i7, aa(j, obj));
                        break;
                    }
                    break;
                case 57:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        ((p) aoyVar.h).p(i7, y(j, obj));
                        break;
                    }
                    break;
                case 58:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        boolean booleanValue = ((Boolean) diy.f14260f.p(j, obj)).booleanValue();
                        p pVar6 = (p) aoyVar.h;
                        pVar6.r(i7 << 3);
                        pVar6.q(booleanValue ? (byte) 1 : (byte) 0);
                        break;
                    }
                    break;
                case 59:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        z(i7, unsafe.getObject(obj, j), aoyVar);
                        break;
                    }
                    break;
                case 60:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        aoyVar.ah(i7, unsafe.getObject(obj, j), ah(i3));
                        break;
                    }
                    break;
                case 61:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        aoyVar.aa(i7, (cyb) unsafe.getObject(obj, j));
                        break;
                    }
                    break;
                case 62:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        int y2 = y(j, obj);
                        p pVar7 = (p) aoyVar.h;
                        pVar7.r(i7 << 3);
                        pVar7.r(y2);
                        break;
                    }
                    break;
                case 63:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        int y3 = y(j, obj);
                        p pVar8 = (p) aoyVar.h;
                        pVar8.r(i7 << 3);
                        if (y3 >= 0) {
                            pVar8.r(y3);
                            break;
                        } else {
                            pVar8.v(y3);
                            break;
                        }
                    }
                    break;
                case 64:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        ((p) aoyVar.h).p(i7, y(j, obj));
                        break;
                    }
                    break;
                case 65:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        ((p) aoyVar.h).w(i7, aa(j, obj));
                        break;
                    }
                    break;
                case 66:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        aoyVar.p(i7, y(j, obj));
                        break;
                    }
                    break;
                case 67:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        aoyVar.af(i7, aa(j, obj));
                        break;
                    }
                    break;
                case 68:
                    i3 = i10;
                    if (ai(i7, i3, obj)) {
                        aoyVar.z(i7, unsafe.getObject(obj, j), ah(i3));
                        break;
                    }
                    break;
                default:
                    i3 = i10;
                    break;
            }
        }
        this.k.getClass();
        ((cys) obj).zzc.h(aoyVar);
    }

    @Override // g.ciw
    public final boolean d(cys cysVar, cys cysVar2) {
        boolean al;
        int[] iArr = this.n;
        int length = iArr.length;
        int i = 0;
        while (true) {
            if (i < length) {
                int ao = ao(i);
                long j = ao & 1048575;
                switch (v(ao)) {
                    case 0:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar = diy.f14260f;
                            if (Double.doubleToLongBits(frxVar.d(j, cysVar)) != Double.doubleToLongBits(frxVar.d(j, cysVar2))) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 1:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar2 = diy.f14260f;
                            if (Float.floatToIntBits(frxVar2.f(j, cysVar)) != Float.floatToIntBits(frxVar2.f(j, cysVar2))) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 2:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar3 = diy.f14260f;
                            if (frxVar3.k(j, cysVar) != frxVar3.k(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 3:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar4 = diy.f14260f;
                            if (frxVar4.k(j, cysVar) != frxVar4.k(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 4:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar5 = diy.f14260f;
                            if (frxVar5.r(j, cysVar) != frxVar5.r(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 5:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar6 = diy.f14260f;
                            if (frxVar6.k(j, cysVar) != frxVar6.k(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 6:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar7 = diy.f14260f;
                            if (frxVar7.r(j, cysVar) != frxVar7.r(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 7:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar8 = diy.f14260f;
                            if (frxVar8.h(j, cysVar) != frxVar8.h(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 8:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar9 = diy.f14260f;
                            if (!ave.al(frxVar9.p(j, cysVar), frxVar9.p(j, cysVar2))) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 9:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar10 = diy.f14260f;
                            if (!ave.al(frxVar10.p(j, cysVar), frxVar10.p(j, cysVar2))) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 10:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar11 = diy.f14260f;
                            if (!ave.al(frxVar11.p(j, cysVar), frxVar11.p(j, cysVar2))) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 11:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar12 = diy.f14260f;
                            if (frxVar12.r(j, cysVar) != frxVar12.r(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 12:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar13 = diy.f14260f;
                            if (frxVar13.r(j, cysVar) != frxVar13.r(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 13:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar14 = diy.f14260f;
                            if (frxVar14.r(j, cysVar) != frxVar14.r(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 14:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar15 = diy.f14260f;
                            if (frxVar15.k(j, cysVar) != frxVar15.k(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 15:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar16 = diy.f14260f;
                            if (frxVar16.r(j, cysVar) != frxVar16.r(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 16:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar17 = diy.f14260f;
                            if (frxVar17.k(j, cysVar) != frxVar17.k(j, cysVar2)) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
                    case 17:
                        if (!al(cysVar, cysVar2, i)) {
                            break;
                        } else {
                            frx frxVar18 = diy.f14260f;
                            if (!ave.al(frxVar18.p(j, cysVar), frxVar18.p(j, cysVar2))) {
                                break;
                            } else {
                                continue;
                                i += 3;
                            }
                        }
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
                        frx frxVar19 = diy.f14260f;
                        al = ave.al(frxVar19.p(j, cysVar), frxVar19.p(j, cysVar2));
                        break;
                    case 50:
                        frx frxVar20 = diy.f14260f;
                        al = ave.al(frxVar20.p(j, cysVar), frxVar20.p(j, cysVar2));
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
                        frx frxVar21 = diy.f14260f;
                        if (frxVar21.r(j2, cysVar) == frxVar21.r(j2, cysVar2) && ave.al(frxVar21.p(j, cysVar), frxVar21.p(j, cysVar2))) {
                            continue;
                            i += 3;
                        }
                        break;
                    default:
                        i += 3;
                }
                if (al) {
                    i += 3;
                }
            } else {
                this.k.getClass();
                if (cysVar.zzc.equals(cysVar2.zzc)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // g.ciw
    public final void e(Object obj, aoy aoyVar) {
        if (!this.o) {
            au(obj, aoyVar);
            return;
        }
        int[] iArr = this.n;
        int length = iArr.length;
        for (int i = 0; i < length; i += 3) {
            int ao = ao(i);
            int i2 = iArr[i];
            switch (v(ao)) {
                case 0:
                    if (ar(i, obj)) {
                        ((p) aoyVar.h).w(i2, Double.doubleToRawLongBits(diy.f14260f.d(ao & 1048575, obj)));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (ar(i, obj)) {
                        ((p) aoyVar.h).p(i2, Float.floatToRawIntBits(diy.f14260f.f(ao & 1048575, obj)));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (ar(i, obj)) {
                        ((p) aoyVar.h).o(i2, diy.f14260f.k(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (ar(i, obj)) {
                        ((p) aoyVar.h).o(i2, diy.f14260f.k(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (ar(i, obj)) {
                        int r = diy.f14260f.r(ao & 1048575, obj);
                        p pVar = (p) aoyVar.h;
                        pVar.r(i2 << 3);
                        if (r >= 0) {
                            pVar.r(r);
                            break;
                        } else {
                            pVar.v(r);
                            break;
                        }
                    } else {
                        break;
                    }
                case 5:
                    if (ar(i, obj)) {
                        ((p) aoyVar.h).w(i2, diy.f14260f.k(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (ar(i, obj)) {
                        ((p) aoyVar.h).p(i2, diy.f14260f.r(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (ar(i, obj)) {
                        boolean h = diy.f14260f.h(ao & 1048575, obj);
                        p pVar2 = (p) aoyVar.h;
                        pVar2.r(i2 << 3);
                        pVar2.q(h ? (byte) 1 : (byte) 0);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (ar(i, obj)) {
                        z(i2, diy.f14260f.p(ao & 1048575, obj), aoyVar);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    if (ar(i, obj)) {
                        aoyVar.ah(i2, diy.f14260f.p(ao & 1048575, obj), ah(i));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (ar(i, obj)) {
                        aoyVar.aa(i2, (cyb) diy.f14260f.p(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (ar(i, obj)) {
                        int r2 = diy.f14260f.r(ao & 1048575, obj);
                        p pVar3 = (p) aoyVar.h;
                        pVar3.r(i2 << 3);
                        pVar3.r(r2);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (ar(i, obj)) {
                        int r3 = diy.f14260f.r(ao & 1048575, obj);
                        p pVar4 = (p) aoyVar.h;
                        pVar4.r(i2 << 3);
                        if (r3 >= 0) {
                            pVar4.r(r3);
                            break;
                        } else {
                            pVar4.v(r3);
                            break;
                        }
                    } else {
                        break;
                    }
                case 13:
                    if (ar(i, obj)) {
                        ((p) aoyVar.h).p(i2, diy.f14260f.r(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (ar(i, obj)) {
                        ((p) aoyVar.h).w(i2, diy.f14260f.k(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (ar(i, obj)) {
                        aoyVar.p(i2, diy.f14260f.r(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (ar(i, obj)) {
                        aoyVar.af(i2, diy.f14260f.k(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (ar(i, obj)) {
                        aoyVar.z(i2, diy.f14260f.p(ao & 1048575, obj), ah(i));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    ave.m(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 19:
                    ave.f(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 20:
                    ave.ac(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 21:
                    ave.ad(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 22:
                    ave.aa(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 23:
                    ave.ak(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 24:
                    ave.w(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 25:
                    ave.ab(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 26:
                    ave.i(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar);
                    break;
                case 27:
                    List list = (List) diy.f14260f.p(ao & 1048575, obj);
                    ciw ah = ah(i);
                    Class cls = ave.f10911b;
                    if (list != null && !list.isEmpty()) {
                        for (int i3 = 0; i3 < list.size(); i3++) {
                            aoyVar.ah(i2, list.get(i3), ah);
                        }
                        break;
                    }
                    break;
                case 28:
                    ave.ah(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar);
                    break;
                case 29:
                    ave.y(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 30:
                    ave.p(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 31:
                    ave.g(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 32:
                    ave.o(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 33:
                    ave.z(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 34:
                    ave.l(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, false);
                    break;
                case 35:
                    ave.m(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 36:
                    ave.f(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 37:
                    ave.ac(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 38:
                    ave.ad(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 39:
                    ave.aa(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 40:
                    ave.ak(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 41:
                    ave.w(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 42:
                    ave.ab(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 43:
                    ave.y(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 44:
                    ave.p(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 45:
                    ave.g(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 46:
                    ave.o(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 47:
                    ave.z(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 48:
                    ave.l(i2, (List) diy.f14260f.p(ao & 1048575, obj), aoyVar, true);
                    break;
                case 49:
                    List list2 = (List) diy.f14260f.p(ao & 1048575, obj);
                    ciw ah2 = ah(i);
                    Class cls2 = ave.f10911b;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i4 = 0; i4 < list2.size(); i4++) {
                            aoyVar.z(i2, list2.get(i4), ah2);
                        }
                        break;
                    }
                    break;
                case 50:
                    if (diy.f14260f.p(ao & 1048575, obj) != null) {
                        an(i).getClass();
                        throw new ClassCastException();
                    }
                    break;
                case 51:
                    if (ai(i2, i, obj)) {
                        ((p) aoyVar.h).w(i2, Double.doubleToRawLongBits(((Double) diy.f14260f.p(ao & 1048575, obj)).doubleValue()));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (ai(i2, i, obj)) {
                        ((p) aoyVar.h).p(i2, Float.floatToRawIntBits(((Float) diy.f14260f.p(ao & 1048575, obj)).floatValue()));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (ai(i2, i, obj)) {
                        ((p) aoyVar.h).o(i2, aa(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (ai(i2, i, obj)) {
                        ((p) aoyVar.h).o(i2, aa(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (ai(i2, i, obj)) {
                        int y = y(ao & 1048575, obj);
                        p pVar5 = (p) aoyVar.h;
                        pVar5.r(i2 << 3);
                        if (y >= 0) {
                            pVar5.r(y);
                            break;
                        } else {
                            pVar5.v(y);
                            break;
                        }
                    } else {
                        break;
                    }
                case 56:
                    if (ai(i2, i, obj)) {
                        ((p) aoyVar.h).w(i2, aa(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (ai(i2, i, obj)) {
                        ((p) aoyVar.h).p(i2, y(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (ai(i2, i, obj)) {
                        boolean booleanValue = ((Boolean) diy.f14260f.p(ao & 1048575, obj)).booleanValue();
                        p pVar6 = (p) aoyVar.h;
                        pVar6.r(i2 << 3);
                        pVar6.q(booleanValue ? (byte) 1 : (byte) 0);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (ai(i2, i, obj)) {
                        z(i2, diy.f14260f.p(ao & 1048575, obj), aoyVar);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (ai(i2, i, obj)) {
                        aoyVar.ah(i2, diy.f14260f.p(ao & 1048575, obj), ah(i));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (ai(i2, i, obj)) {
                        aoyVar.aa(i2, (cyb) diy.f14260f.p(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (ai(i2, i, obj)) {
                        int y2 = y(ao & 1048575, obj);
                        p pVar7 = (p) aoyVar.h;
                        pVar7.r(i2 << 3);
                        pVar7.r(y2);
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (ai(i2, i, obj)) {
                        int y3 = y(ao & 1048575, obj);
                        p pVar8 = (p) aoyVar.h;
                        pVar8.r(i2 << 3);
                        if (y3 >= 0) {
                            pVar8.r(y3);
                            break;
                        } else {
                            pVar8.v(y3);
                            break;
                        }
                    } else {
                        break;
                    }
                case 64:
                    if (ai(i2, i, obj)) {
                        ((p) aoyVar.h).p(i2, y(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (ai(i2, i, obj)) {
                        ((p) aoyVar.h).w(i2, aa(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (ai(i2, i, obj)) {
                        aoyVar.p(i2, y(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (ai(i2, i, obj)) {
                        aoyVar.af(i2, aa(ao & 1048575, obj));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (ai(i2, i, obj)) {
                        aoyVar.z(i2, diy.f14260f.p(ao & 1048575, obj), ah(i));
                        break;
                    } else {
                        break;
                    }
            }
        }
        this.k.getClass();
        ((cys) obj).zzc.h(aoyVar);
    }

    @Override // g.ciw
    public final void f(Object obj) {
        int[] iArr;
        int i;
        int i2 = this.f15325c;
        while (true) {
            iArr = this.t;
            i = this.p;
            if (i2 >= i) {
                break;
            }
            long ao = ao(iArr[i2]) & 1048575;
            Object p = diy.f14260f.p(ao, obj);
            if (p != null) {
                ((dhf) p).b();
                diy.h(ao, obj, p);
            }
            i2++;
        }
        int length = iArr.length;
        while (i < length) {
            this.r.c(iArr[i], obj);
            i++;
        }
        this.k.getClass();
        ((cys) obj).zzc.f16901c = false;
    }

    @Override // g.ciw
    public final void g(Object obj, byte[] bArr, int i, int i2, fks fksVar) {
        if (this.o) {
            as(obj, bArr, i, i2, fksVar);
        } else {
            ak(obj, bArr, i, i2, 0, fksVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00ec, code lost:
    
        return false;
     */
    @Override // g.ciw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean h(Object obj) {
        int i = 0;
        int i2 = 1048575;
        int i3 = 0;
        loop0: while (true) {
            boolean z = true;
            if (i >= this.f15325c) {
                return true;
            }
            int i4 = this.t[i];
            int[] iArr = this.n;
            int i5 = iArr[i4];
            int ao = ao(i4);
            int i6 = iArr[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i2) {
                if (i7 != 1048575) {
                    i3 = f15324b.getInt(obj, i7);
                }
                i2 = i7;
            }
            if ((268435456 & ao) != 0) {
                if (!(i2 == 1048575 ? ar(i4, obj) : (i3 & i8) != 0)) {
                    break;
                }
            }
            int v = v(ao);
            if (v == 9 || v == 17) {
                if (i2 == 1048575) {
                    z = ar(i4, obj);
                } else if ((i8 & i3) == 0) {
                    z = false;
                }
                if (z) {
                    if (!ah(i4).h(diy.f14260f.p(ao & 1048575, obj))) {
                        break;
                    }
                } else {
                    continue;
                }
                i++;
            } else {
                if (v != 27) {
                    if (v == 60 || v == 68) {
                        if (ai(i5, i4, obj)) {
                            if (!ah(i4).h(diy.f14260f.p(ao & 1048575, obj))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else if (v != 49) {
                        if (v != 50) {
                            continue;
                        } else {
                            if (!((dhf) diy.f14260f.p(ao & 1048575, obj)).isEmpty()) {
                                an(i4).getClass();
                                throw new ClassCastException();
                            }
                        }
                    }
                    i++;
                }
                List list = (List) diy.f14260f.p(ao & 1048575, obj);
                if (list.isEmpty()) {
                    continue;
                } else {
                    ciw ah = ah(i4);
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        if (!ah.h(list.get(i9))) {
                            break loop0;
                        }
                    }
                }
                i++;
            }
        }
    }

    @Override // g.ciw
    public final void i(cys cysVar, cys cysVar2) {
        cys cysVar3;
        cysVar2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.n;
            if (i >= iArr.length) {
                ave.q(this.k, cysVar, cysVar2);
                return;
            }
            int ao = ao(i);
            long j = ao & 1048575;
            int i2 = iArr[i];
            switch (v(ao)) {
                case 0:
                    cysVar3 = cysVar;
                    if (!ar(i, cysVar2)) {
                        break;
                    } else {
                        frx frxVar = diy.f14260f;
                        frxVar.c(cysVar3, j, frxVar.d(j, cysVar2));
                        ap(i, cysVar3);
                        continue;
                    }
                case 1:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        frx frxVar2 = diy.f14260f;
                        frxVar2.e(cysVar3, j, frxVar2.f(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        frx frxVar3 = diy.f14260f;
                        frxVar3.l(cysVar3, j, frxVar3.k(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        frx frxVar4 = diy.f14260f;
                        frxVar4.l(cysVar3, j, frxVar4.k(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        diy.s(cysVar3, j, diy.f14260f.r(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        frx frxVar5 = diy.f14260f;
                        frxVar5.l(cysVar3, j, frxVar5.k(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        diy.s(cysVar3, j, diy.f14260f.r(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        frx frxVar6 = diy.f14260f;
                        frxVar6.g(cysVar3, j, frxVar6.h(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        diy.h(j, cysVar3, diy.f14260f.p(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 9:
                    cysVar3 = cysVar;
                    ae(cysVar3, i, cysVar2);
                    continue;
                case 10:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        diy.h(j, cysVar3, diy.f14260f.p(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 11:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        diy.s(cysVar3, j, diy.f14260f.r(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 12:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        diy.s(cysVar3, j, diy.f14260f.r(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        diy.s(cysVar3, j, diy.f14260f.r(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        frx frxVar7 = diy.f14260f;
                        frxVar7.l(cysVar3, j, frxVar7.k(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    cysVar3 = cysVar;
                    if (ar(i, cysVar2)) {
                        diy.s(cysVar3, j, diy.f14260f.r(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    } else {
                        continue;
                    }
                case 16:
                    if (ar(i, cysVar2)) {
                        frx frxVar8 = diy.f14260f;
                        cysVar3 = cysVar;
                        frxVar8.l(cysVar3, j, frxVar8.k(j, cysVar2));
                        ap(i, cysVar3);
                        break;
                    }
                    break;
                case 17:
                    ae(cysVar, i, cysVar2);
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
                    this.r.d(j, cysVar, cysVar2);
                    break;
                case 50:
                    Class cls = ave.f10911b;
                    frx frxVar9 = diy.f14260f;
                    diy.h(j, cysVar, aoq.b(frxVar9.p(j, cysVar), frxVar9.p(j, cysVar2)));
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
                    if (ai(i2, i, cysVar2)) {
                        diy.h(j, cysVar, diy.f14260f.p(j, cysVar2));
                        diy.s(cysVar, iArr[i + 2] & 1048575, i2);
                        break;
                    }
                    break;
                case 60:
                    am(cysVar, i, cysVar2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (ai(i2, i, cysVar2)) {
                        diy.h(j, cysVar, diy.f14260f.p(j, cysVar2));
                        diy.s(cysVar, iArr[i + 2] & 1048575, i2);
                        break;
                    }
                    break;
                case 68:
                    am(cysVar, i, cysVar2);
                    break;
            }
            cysVar3 = cysVar;
            i += 3;
            cysVar = cysVar3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0217, code lost:
    
        if (r4 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00df, code lost:
    
        if (r4 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e1, code lost:
    
        r8 = 1231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e3, code lost:
    
        r3 = r8 + r3;
     */
    @Override // g.ciw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int j(cys cysVar) {
        int i;
        int c2;
        int i2;
        int[] iArr = this.n;
        int length = iArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int ao = ao(i4);
            int i5 = iArr[i4];
            long j = 1048575 & ao;
            int i6 = 1237;
            int i7 = 37;
            switch (v(ao)) {
                case 0:
                    i = i3 * 53;
                    c2 = dhz.c(Double.doubleToLongBits(diy.f14260f.d(j, cysVar)));
                    i3 = c2 + i;
                    break;
                case 1:
                    i = i3 * 53;
                    c2 = Float.floatToIntBits(diy.f14260f.f(j, cysVar));
                    i3 = c2 + i;
                    break;
                case 2:
                    i = i3 * 53;
                    c2 = dhz.c(diy.f14260f.k(j, cysVar));
                    i3 = c2 + i;
                    break;
                case 3:
                    i = i3 * 53;
                    c2 = dhz.c(diy.f14260f.k(j, cysVar));
                    i3 = c2 + i;
                    break;
                case 4:
                    i = i3 * 53;
                    c2 = diy.f14260f.r(j, cysVar);
                    i3 = c2 + i;
                    break;
                case 5:
                    i = i3 * 53;
                    c2 = dhz.c(diy.f14260f.k(j, cysVar));
                    i3 = c2 + i;
                    break;
                case 6:
                    i = i3 * 53;
                    c2 = diy.f14260f.r(j, cysVar);
                    i3 = c2 + i;
                    break;
                case 7:
                    i2 = i3 * 53;
                    boolean h = diy.f14260f.h(j, cysVar);
                    Charset charset = dhz.f14209a;
                    break;
                case 8:
                    i = i3 * 53;
                    c2 = ((String) diy.f14260f.p(j, cysVar)).hashCode();
                    i3 = c2 + i;
                    break;
                case 9:
                    Object p = diy.f14260f.p(j, cysVar);
                    if (p != null) {
                        i7 = p.hashCode();
                    }
                    i3 = (i3 * 53) + i7;
                    break;
                case 10:
                    i = i3 * 53;
                    c2 = diy.f14260f.p(j, cysVar).hashCode();
                    i3 = c2 + i;
                    break;
                case 11:
                    i = i3 * 53;
                    c2 = diy.f14260f.r(j, cysVar);
                    i3 = c2 + i;
                    break;
                case 12:
                    i = i3 * 53;
                    c2 = diy.f14260f.r(j, cysVar);
                    i3 = c2 + i;
                    break;
                case 13:
                    i = i3 * 53;
                    c2 = diy.f14260f.r(j, cysVar);
                    i3 = c2 + i;
                    break;
                case 14:
                    i = i3 * 53;
                    c2 = dhz.c(diy.f14260f.k(j, cysVar));
                    i3 = c2 + i;
                    break;
                case 15:
                    i = i3 * 53;
                    c2 = diy.f14260f.r(j, cysVar);
                    i3 = c2 + i;
                    break;
                case 16:
                    i = i3 * 53;
                    c2 = dhz.c(diy.f14260f.k(j, cysVar));
                    i3 = c2 + i;
                    break;
                case 17:
                    Object p2 = diy.f14260f.p(j, cysVar);
                    if (p2 != null) {
                        i7 = p2.hashCode();
                    }
                    i3 = (i3 * 53) + i7;
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
                    i = i3 * 53;
                    c2 = diy.f14260f.p(j, cysVar).hashCode();
                    i3 = c2 + i;
                    break;
                case 50:
                    i = i3 * 53;
                    c2 = diy.f14260f.p(j, cysVar).hashCode();
                    i3 = c2 + i;
                    break;
                case 51:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = dhz.c(Double.doubleToLongBits(((Double) diy.f14260f.p(j, cysVar)).doubleValue()));
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = Float.floatToIntBits(((Float) diy.f14260f.p(j, cysVar)).floatValue());
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = dhz.c(aa(j, cysVar));
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = dhz.c(aa(j, cysVar));
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = y(j, cysVar);
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = dhz.c(aa(j, cysVar));
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = y(j, cysVar);
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (ai(i5, i4, cysVar)) {
                        i2 = i3 * 53;
                        boolean booleanValue = ((Boolean) diy.f14260f.p(j, cysVar)).booleanValue();
                        Charset charset2 = dhz.f14209a;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = ((String) diy.f14260f.p(j, cysVar)).hashCode();
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = diy.f14260f.p(j, cysVar).hashCode();
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = diy.f14260f.p(j, cysVar).hashCode();
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = y(j, cysVar);
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = y(j, cysVar);
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = y(j, cysVar);
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = dhz.c(aa(j, cysVar));
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = y(j, cysVar);
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = dhz.c(aa(j, cysVar));
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (ai(i5, i4, cysVar)) {
                        i = i3 * 53;
                        c2 = diy.f14260f.p(j, cysVar).hashCode();
                        i3 = c2 + i;
                        break;
                    } else {
                        break;
                    }
            }
        }
        this.k.getClass();
        return cysVar.zzc.hashCode() + (i3 * 53);
    }

    @Override // g.ciw
    public final int zza(Object obj) {
        return this.o ? ag(obj) : aq(obj);
    }

    @Override // g.ciw
    public final Object zze() {
        return ((cys) this.m).a(4);
    }
}
