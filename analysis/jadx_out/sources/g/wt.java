package g;

import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class wt implements duf {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f20239a = {'t', 'r', 'u', 'e'};

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f20240c = {'f', 'a', 'l', 's', 'e'};

    /* renamed from: d, reason: collision with root package name */
    public final String f20241d;

    /* renamed from: e, reason: collision with root package name */
    public final ekz[] f20242e;

    /* renamed from: f, reason: collision with root package name */
    public final ekz[] f20243f;

    /* renamed from: g, reason: collision with root package name */
    public int f20244g;

    public wt(Class cls) {
        int modifiers = cls.getModifiers();
        this.f20244g = 0;
        ecz eczVar = (ecz) cls.getAnnotation(ecz.class);
        if (eczVar != null) {
            this.f20244g = gar.b(eczVar.serialzeFeatures());
            String typeName = eczVar.typeName();
            this.f20241d = typeName;
            if (typeName.length() == 0) {
                this.f20241d = null;
            }
        }
        ArrayList f2 = dtu.f(cls, modifiers, eczVar, false);
        ArrayList arrayList = new ArrayList();
        Iterator it = f2.iterator();
        while (it.hasNext()) {
            arrayList.add(new ekz((bnu) it.next()));
        }
        ekz[] ekzVarArr = (ekz[]) arrayList.toArray(new ekz[arrayList.size()]);
        this.f20242e = ekzVarArr;
        String[] orders = eczVar != null ? eczVar.orders() : null;
        if (orders != null && orders.length != 0) {
            ArrayList f3 = dtu.f(cls, modifiers, eczVar, true);
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = f3.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new ekz((bnu) it2.next()));
            }
            this.f20243f = (ekz[]) arrayList2.toArray(new ekz[arrayList2.size()]);
            return;
        }
        ekz[] ekzVarArr2 = new ekz[ekzVarArr.length];
        System.arraycopy(ekzVarArr, 0, ekzVarArr2, 0, ekzVarArr.length);
        Arrays.sort(ekzVarArr2);
        if (Arrays.equals(ekzVarArr2, ekzVarArr)) {
            this.f20243f = ekzVarArr;
        } else {
            this.f20243f = ekzVarArr2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ce, code lost:
    
        if (r36.f13198b.f9958b != null) goto L60;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0278 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0293 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x02d5 A[Catch: all -> 0x008d, Exception -> 0x0091, TryCatch #5 {Exception -> 0x0091, all -> 0x008d, blocks: (B:29:0x0081, B:31:0x0089, B:32:0x0095, B:34:0x00a0, B:36:0x00a9, B:37:0x00b1, B:39:0x00bc, B:42:0x00c3, B:44:0x00ca, B:47:0x00f3, B:49:0x00f8, B:52:0x0103, B:53:0x010a, B:56:0x0110, B:58:0x0119, B:62:0x0126, B:66:0x0133, B:69:0x013d, B:70:0x014c, B:77:0x016d, B:99:0x017b, B:103:0x0186, B:104:0x018d, B:109:0x01a2, B:114:0x01ed, B:117:0x01f6, B:119:0x01fd, B:120:0x0202, B:124:0x020d, B:125:0x0214, B:130:0x021d, B:133:0x0226, B:135:0x022d, B:136:0x0232, B:140:0x023d, B:141:0x0244, B:146:0x024d, B:149:0x0256, B:151:0x025d, B:152:0x0262, B:155:0x026e, B:156:0x0275, B:161:0x027c, B:163:0x0282, B:169:0x0297, B:171:0x029b, B:175:0x02a3, B:177:0x02a7, B:180:0x02bb, B:182:0x02bf, B:184:0x02ab, B:186:0x02af, B:190:0x02d5, B:192:0x02e0, B:193:0x02e3, B:195:0x02f6, B:198:0x0300, B:199:0x0303, B:207:0x031e, B:271:0x01b5, B:274:0x01c8, B:275:0x01d7, B:306:0x00d0, B:308:0x00d6, B:310:0x00e4, B:311:0x00ec), top: B:28:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0441 A[Catch: all -> 0x032e, Exception -> 0x0333, TryCatch #6 {Exception -> 0x0333, all -> 0x032e, blocks: (B:82:0x041b, B:210:0x0328, B:216:0x0358, B:220:0x0364, B:224:0x036a, B:226:0x036e, B:227:0x0370, B:229:0x0378, B:230:0x037b, B:222:0x0384, B:233:0x0389, B:236:0x0394, B:237:0x039d, B:242:0x03ae, B:244:0x03b7, B:247:0x03bd, B:248:0x03c2, B:249:0x03c9, B:251:0x03cd, B:252:0x03d2, B:253:0x03d9, B:256:0x03df, B:258:0x03e8, B:260:0x03f7, B:261:0x03fc, B:262:0x0401, B:263:0x040c, B:264:0x0411, B:265:0x0416, B:266:0x0340, B:284:0x0439, B:286:0x0441, B:289:0x044c, B:290:0x0453, B:291:0x0454, B:293:0x0457, B:295:0x0460, B:296:0x046b, B:298:0x0476, B:299:0x0479), top: B:81:0x041b }] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0457 A[Catch: all -> 0x032e, Exception -> 0x0333, TryCatch #6 {Exception -> 0x0333, all -> 0x032e, blocks: (B:82:0x041b, B:210:0x0328, B:216:0x0358, B:220:0x0364, B:224:0x036a, B:226:0x036e, B:227:0x0370, B:229:0x0378, B:230:0x037b, B:222:0x0384, B:233:0x0389, B:236:0x0394, B:237:0x039d, B:242:0x03ae, B:244:0x03b7, B:247:0x03bd, B:248:0x03c2, B:249:0x03c9, B:251:0x03cd, B:252:0x03d2, B:253:0x03d9, B:256:0x03df, B:258:0x03e8, B:260:0x03f7, B:261:0x03fc, B:262:0x0401, B:263:0x040c, B:264:0x0411, B:265:0x0416, B:266:0x0340, B:284:0x0439, B:286:0x0441, B:289:0x044c, B:290:0x0453, B:291:0x0454, B:293:0x0457, B:295:0x0460, B:296:0x046b, B:298:0x0476, B:299:0x0479), top: B:81:0x041b }] */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0476 A[Catch: all -> 0x032e, Exception -> 0x0333, TryCatch #6 {Exception -> 0x0333, all -> 0x032e, blocks: (B:82:0x041b, B:210:0x0328, B:216:0x0358, B:220:0x0364, B:224:0x036a, B:226:0x036e, B:227:0x0370, B:229:0x0378, B:230:0x037b, B:222:0x0384, B:233:0x0389, B:236:0x0394, B:237:0x039d, B:242:0x03ae, B:244:0x03b7, B:247:0x03bd, B:248:0x03c2, B:249:0x03c9, B:251:0x03cd, B:252:0x03d2, B:253:0x03d9, B:256:0x03df, B:258:0x03e8, B:260:0x03f7, B:261:0x03fc, B:262:0x0401, B:263:0x040c, B:264:0x0411, B:265:0x0416, B:266:0x0340, B:284:0x0439, B:286:0x0441, B:289:0x044c, B:290:0x0453, B:291:0x0454, B:293:0x0457, B:295:0x0460, B:296:0x046b, B:298:0x0476, B:299:0x0479), top: B:81:0x041b }] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f8 A[Catch: all -> 0x008d, Exception -> 0x0091, TryCatch #5 {Exception -> 0x0091, all -> 0x008d, blocks: (B:29:0x0081, B:31:0x0089, B:32:0x0095, B:34:0x00a0, B:36:0x00a9, B:37:0x00b1, B:39:0x00bc, B:42:0x00c3, B:44:0x00ca, B:47:0x00f3, B:49:0x00f8, B:52:0x0103, B:53:0x010a, B:56:0x0110, B:58:0x0119, B:62:0x0126, B:66:0x0133, B:69:0x013d, B:70:0x014c, B:77:0x016d, B:99:0x017b, B:103:0x0186, B:104:0x018d, B:109:0x01a2, B:114:0x01ed, B:117:0x01f6, B:119:0x01fd, B:120:0x0202, B:124:0x020d, B:125:0x0214, B:130:0x021d, B:133:0x0226, B:135:0x022d, B:136:0x0232, B:140:0x023d, B:141:0x0244, B:146:0x024d, B:149:0x0256, B:151:0x025d, B:152:0x0262, B:155:0x026e, B:156:0x0275, B:161:0x027c, B:163:0x0282, B:169:0x0297, B:171:0x029b, B:175:0x02a3, B:177:0x02a7, B:180:0x02bb, B:182:0x02bf, B:184:0x02ab, B:186:0x02af, B:190:0x02d5, B:192:0x02e0, B:193:0x02e3, B:195:0x02f6, B:198:0x0300, B:199:0x0303, B:207:0x031e, B:271:0x01b5, B:274:0x01c8, B:275:0x01d7, B:306:0x00d0, B:308:0x00d6, B:310:0x00e4, B:311:0x00ec), top: B:28:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0119 A[Catch: all -> 0x008d, Exception -> 0x0091, TryCatch #5 {Exception -> 0x0091, all -> 0x008d, blocks: (B:29:0x0081, B:31:0x0089, B:32:0x0095, B:34:0x00a0, B:36:0x00a9, B:37:0x00b1, B:39:0x00bc, B:42:0x00c3, B:44:0x00ca, B:47:0x00f3, B:49:0x00f8, B:52:0x0103, B:53:0x010a, B:56:0x0110, B:58:0x0119, B:62:0x0126, B:66:0x0133, B:69:0x013d, B:70:0x014c, B:77:0x016d, B:99:0x017b, B:103:0x0186, B:104:0x018d, B:109:0x01a2, B:114:0x01ed, B:117:0x01f6, B:119:0x01fd, B:120:0x0202, B:124:0x020d, B:125:0x0214, B:130:0x021d, B:133:0x0226, B:135:0x022d, B:136:0x0232, B:140:0x023d, B:141:0x0244, B:146:0x024d, B:149:0x0256, B:151:0x025d, B:152:0x0262, B:155:0x026e, B:156:0x0275, B:161:0x027c, B:163:0x0282, B:169:0x0297, B:171:0x029b, B:175:0x02a3, B:177:0x02a7, B:180:0x02bb, B:182:0x02bf, B:184:0x02ab, B:186:0x02af, B:190:0x02d5, B:192:0x02e0, B:193:0x02e3, B:195:0x02f6, B:198:0x0300, B:199:0x0303, B:207:0x031e, B:271:0x01b5, B:274:0x01c8, B:275:0x01d7, B:306:0x00d0, B:308:0x00d6, B:310:0x00e4, B:311:0x00ec), top: B:28:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x014f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // g.duf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(cnu cnuVar, Object obj, Object obj2, Type type) {
        IdentityHashMap identityHashMap;
        aca acaVar;
        char c2;
        ArrayList arrayList;
        int i;
        ArrayList arrayList2;
        int i2;
        aca acaVar2;
        ekz ekzVar;
        int i3;
        bnu bnuVar;
        boolean z;
        Class cls;
        boolean z2;
        Field field;
        ArrayList arrayList3;
        ArrayList arrayList4;
        char c3;
        Object f2;
        long j;
        boolean z3;
        boolean z4;
        int i4;
        boolean z5;
        Object obj3;
        boolean z6;
        ArrayList arrayList5;
        boolean z7;
        boolean z8;
        Object obj4 = obj;
        cxa cxaVar = cnuVar.j;
        if (obj4 == null) {
            cxaVar.o();
            return;
        }
        aca acaVar3 = cnuVar.f13198b;
        if ((acaVar3 == null || (acaVar3.f9957a & gar.DisableCircularReferenceDetect.mask) == 0) && (identityHashMap = cnuVar.k) != null && identityHashMap.containsKey(obj4)) {
            cnuVar.o(obj);
            return;
        }
        int i5 = cxaVar.k;
        ekz[] ekzVarArr = (gar.SortField.mask & i5) != 0 ? this.f20243f : this.f20242e;
        aca acaVar4 = cnuVar.f13198b;
        if ((i5 & gar.DisableCircularReferenceDetect.mask) == 0) {
            cnuVar.f13198b = new aca(acaVar4, obj4, obj2, this.f20244g);
            if (cnuVar.k == null) {
                cnuVar.k = new IdentityHashMap();
            }
            cnuVar.k.put(obj4, cnuVar.f13198b);
        }
        int i6 = this.f20244g;
        int i7 = gar.BeanToArray.mask;
        boolean z9 = ((i6 & i7) == 0 && (cxaVar.k & i7) == 0) ? false : true;
        char c4 = z9 ? '[' : '{';
        char c5 = z9 ? ']' : '}';
        try {
            int i8 = cxaVar.m + 1;
            if (i8 > cxaVar.l.length) {
                cxaVar.u(i8);
            }
            cxaVar.l[cxaVar.m] = c4;
            cxaVar.m = i8;
            if (ekzVarArr.length > 0 && (cxaVar.k & gar.PrettyFormat.mask) != 0) {
                cnuVar.i++;
                cnuVar.p();
            }
            int i9 = this.f20244g;
            int i10 = gar.WriteClassName.mask;
            if ((i9 & i10) == 0) {
                int i11 = cxaVar.k;
                if ((i10 & i11) != 0) {
                    if (type == null) {
                        if ((i11 & gar.NotWriteRootClassName.mask) != 0) {
                        }
                    }
                }
                c2 = 0;
                arrayList = cnuVar.l;
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    if (it.hasNext()) {
                        awf.e(it.next());
                        throw null;
                    }
                }
                boolean z10 = c2 == ',';
                int i12 = cxaVar.k;
                boolean z11 = (gar.QuoteFieldNames.mask & i12) == 0 && (gar.UseSingleQuotes.mask & i12) == 0;
                boolean z12 = (gar.UseSingleQuotes.mask & i12) != 0;
                boolean z13 = (i12 & gar.NotWriteDefaultValue.mask) != 0;
                ArrayList arrayList6 = cnuVar.f13201e;
                ArrayList arrayList7 = cnuVar.m;
                ArrayList arrayList8 = cnuVar.f13203g;
                ArrayList arrayList9 = cnuVar.f13197a;
                boolean z14 = z10;
                i = 0;
                while (i < ekzVarArr.length) {
                    try {
                        ekzVar = ekzVarArr[i];
                        i3 = i;
                        bnuVar = ekzVar.f15731d;
                        z = z9;
                        cls = bnuVar.f11884b;
                        z2 = z13;
                        field = bnuVar.f11886d;
                        arrayList3 = arrayList8;
                    } catch (Exception e2) {
                        e = e2;
                        acaVar2 = acaVar4;
                    } catch (Throwable th) {
                        th = th;
                        acaVar2 = acaVar4;
                    }
                    try {
                        if ((cxaVar.k & gar.SkipTransientField.mask) == 0 || field == null || !bnuVar.h) {
                            if (arrayList9 != null) {
                                Iterator it2 = arrayList9.iterator();
                                if (it2.hasNext()) {
                                    awf.e(it2.next());
                                    throw null;
                                }
                            }
                            boolean z15 = bnuVar.f11889g;
                            Class cls2 = Boolean.TYPE;
                            arrayList4 = arrayList7;
                            Class cls3 = Long.TYPE;
                            c3 = c5;
                            Class cls4 = Integer.TYPE;
                            if (z15) {
                                if (cls == cls4) {
                                    j = 0;
                                    z3 = true;
                                    z4 = false;
                                    z5 = false;
                                    i4 = field.getInt(obj4);
                                } else if (cls == cls3) {
                                    long j2 = field.getLong(obj4);
                                    f2 = null;
                                    j = j2;
                                    z3 = true;
                                    z4 = false;
                                    i4 = 0;
                                    z5 = false;
                                    if (arrayList6 != null) {
                                        if (z3) {
                                            if (cls == cls4) {
                                                f2 = Integer.valueOf(i4);
                                            } else if (cls == cls3) {
                                                f2 = Long.valueOf(j);
                                            } else if (cls == cls2) {
                                                f2 = Boolean.valueOf(z5);
                                            }
                                            z4 = true;
                                        }
                                        Iterator it3 = arrayList6.iterator();
                                        if (it3.hasNext()) {
                                            awf.e(it3.next());
                                            throw null;
                                        }
                                    }
                                    if (arrayList4 != null) {
                                        if (z3 && !z4) {
                                            if (cls == cls4) {
                                                f2 = Integer.valueOf(i4);
                                            } else if (cls == cls3) {
                                                f2 = Long.valueOf(j);
                                            } else if (cls == cls2) {
                                                f2 = Boolean.valueOf(z5);
                                            }
                                            z4 = true;
                                        }
                                        Iterator it4 = arrayList4.iterator();
                                        if (it4.hasNext()) {
                                            awf.e(it4.next());
                                            throw null;
                                        }
                                    }
                                    if (arrayList3 != null) {
                                        if (z3 && !z4) {
                                            if (cls == cls4) {
                                                f2 = Integer.valueOf(i4);
                                            } else if (cls == cls3) {
                                                f2 = Long.valueOf(j);
                                            } else if (cls == cls2) {
                                                f2 = Boolean.valueOf(z5);
                                            }
                                            z4 = true;
                                        }
                                        Iterator it5 = arrayList3.iterator();
                                        if (it5.hasNext()) {
                                            awf.e(it5.next());
                                            throw null;
                                        }
                                    }
                                    obj3 = f2;
                                    if (z4 || f2 != null || z) {
                                        z6 = z12;
                                    } else {
                                        z6 = z12;
                                        if (!ekzVar.f15732e && (cxaVar.k & gar.WriteMapNullValue.mask) == 0) {
                                        }
                                    }
                                    if (z4 || f2 == null || !z2 || (((cls != Byte.TYPE && cls != Short.TYPE && cls != cls4 && cls != cls3 && cls != Float.TYPE && cls != Double.TYPE) || !(f2 instanceof Number) || ((Number) f2).byteValue() != 0) && (cls != cls2 || !(f2 instanceof Boolean) || ((Boolean) f2).booleanValue()))) {
                                        if (z14) {
                                            int i13 = cxaVar.m + 1;
                                            arrayList5 = arrayList6;
                                            if (i13 > cxaVar.l.length) {
                                                cxaVar.u(i13);
                                            }
                                            cxaVar.l[cxaVar.m] = ',';
                                            cxaVar.m = i13;
                                            if ((cxaVar.k & gar.PrettyFormat.mask) != 0) {
                                                cnuVar.p();
                                            }
                                        } else {
                                            arrayList5 = arrayList6;
                                        }
                                        if (obj3 != f2) {
                                            if (!z) {
                                                ekzVar.g(cnuVar);
                                            }
                                            cnuVar.r(f2);
                                            acaVar2 = acaVar4;
                                            z7 = z11;
                                        } else {
                                            if (z) {
                                                acaVar2 = acaVar4;
                                                z7 = z11;
                                            } else if (z11) {
                                                char[] cArr = bnuVar.f11885c;
                                                int length = cArr.length;
                                                int i14 = cxaVar.m + length;
                                                z7 = z11;
                                                if (i14 > cxaVar.l.length) {
                                                    cxaVar.u(i14);
                                                }
                                                acaVar2 = acaVar4;
                                                System.arraycopy(cArr, 0, cxaVar.l, cxaVar.m, length);
                                                cxaVar.m = i14;
                                            } else {
                                                acaVar2 = acaVar4;
                                                z7 = z11;
                                                ekzVar.g(cnuVar);
                                            }
                                            if (!z3 || z4) {
                                                if (z) {
                                                    ekzVar.h(cnuVar, f2);
                                                } else if (cls == String.class) {
                                                    if (f2 == null) {
                                                        int i15 = cxaVar.k;
                                                        int i16 = gar.WriteNullStringAsEmpty.mask;
                                                        if ((i15 & i16) == 0 && (ekzVar.f15728a & i16) == 0) {
                                                            cxaVar.o();
                                                        }
                                                        cxaVar.t("");
                                                    } else {
                                                        String str = (String) f2;
                                                        if (z6) {
                                                            cxaVar.r(str);
                                                        } else {
                                                            cxaVar.v(true, str, (char) 0);
                                                        }
                                                    }
                                                } else if (!bnuVar.f11888f) {
                                                    ekzVar.h(cnuVar, f2);
                                                } else if (f2 == null) {
                                                    cxaVar.o();
                                                } else if ((cxaVar.k & gar.WriteEnumUsingToString.mask) != 0) {
                                                    String str2 = ((Enum) f2).toString();
                                                    if ((cxaVar.k & gar.UseSingleQuotes.mask) != 0) {
                                                        cxaVar.r(str2);
                                                    } else {
                                                        cxaVar.v(false, str2, (char) 0);
                                                    }
                                                } else {
                                                    cxaVar.q(((Enum) f2).ordinal());
                                                }
                                                z8 = true;
                                                i = i3 + 1;
                                                arrayList6 = arrayList5;
                                                z9 = z;
                                                z13 = z2;
                                                arrayList8 = arrayList3;
                                                arrayList7 = arrayList4;
                                                c5 = c3;
                                                z12 = z6;
                                                z11 = z7;
                                                acaVar4 = acaVar2;
                                                z14 = z8;
                                                obj4 = obj;
                                            } else if (cls == cls4) {
                                                int i17 = i4;
                                                if (i17 == Integer.MIN_VALUE) {
                                                    cxaVar.write("-2147483648");
                                                } else {
                                                    int i18 = 0;
                                                    while ((i17 < 0 ? -i17 : i17) > cxa.f13666g[i18]) {
                                                        i18++;
                                                    }
                                                    int i19 = i18 + 1;
                                                    if (i17 < 0) {
                                                        i19 = i18 + 2;
                                                    }
                                                    int i20 = cxaVar.m + i19;
                                                    if (i20 > cxaVar.l.length) {
                                                        cxaVar.u(i20);
                                                    }
                                                    cxa.n(i17, i20, cxaVar.l);
                                                    cxaVar.m = i20;
                                                }
                                            } else if (cls == cls3) {
                                                cxaVar.w(j);
                                            } else if (cls == cls2) {
                                                if (z5) {
                                                    cxaVar.write(f20239a, 0, 4);
                                                } else {
                                                    cxaVar.write(f20240c, 0, 5);
                                                }
                                            }
                                        }
                                        z8 = true;
                                        i = i3 + 1;
                                        arrayList6 = arrayList5;
                                        z9 = z;
                                        z13 = z2;
                                        arrayList8 = arrayList3;
                                        arrayList7 = arrayList4;
                                        c5 = c3;
                                        z12 = z6;
                                        z11 = z7;
                                        acaVar4 = acaVar2;
                                        z14 = z8;
                                        obj4 = obj;
                                    }
                                } else if (cls == cls2) {
                                    z5 = field.getBoolean(obj4);
                                    j = 0;
                                    z3 = true;
                                    z4 = false;
                                    i4 = 0;
                                } else {
                                    f2 = field.get(obj4);
                                }
                                f2 = null;
                                if (arrayList6 != null) {
                                }
                                if (arrayList4 != null) {
                                }
                                if (arrayList3 != null) {
                                }
                                obj3 = f2;
                                if (z4) {
                                }
                                z6 = z12;
                                if (z4) {
                                }
                                if (z14) {
                                }
                                if (obj3 != f2) {
                                }
                                z8 = true;
                                i = i3 + 1;
                                arrayList6 = arrayList5;
                                z9 = z;
                                z13 = z2;
                                arrayList8 = arrayList3;
                                arrayList7 = arrayList4;
                                c5 = c3;
                                z12 = z6;
                                z11 = z7;
                                acaVar4 = acaVar2;
                                z14 = z8;
                                obj4 = obj;
                            } else {
                                f2 = ekzVar.f(obj4);
                            }
                            j = 0;
                            z3 = false;
                            z4 = true;
                            i4 = 0;
                            z5 = false;
                            if (arrayList6 != null) {
                            }
                            if (arrayList4 != null) {
                            }
                            if (arrayList3 != null) {
                            }
                            obj3 = f2;
                            if (z4) {
                            }
                            z6 = z12;
                            if (z4) {
                            }
                            if (z14) {
                            }
                            if (obj3 != f2) {
                            }
                            z8 = true;
                            i = i3 + 1;
                            arrayList6 = arrayList5;
                            z9 = z;
                            z13 = z2;
                            arrayList8 = arrayList3;
                            arrayList7 = arrayList4;
                            c5 = c3;
                            z12 = z6;
                            z11 = z7;
                            acaVar4 = acaVar2;
                            z14 = z8;
                            obj4 = obj;
                        } else {
                            arrayList4 = arrayList7;
                            c3 = c5;
                            z6 = z12;
                        }
                        i = i3 + 1;
                        arrayList6 = arrayList5;
                        z9 = z;
                        z13 = z2;
                        arrayList8 = arrayList3;
                        arrayList7 = arrayList4;
                        c5 = c3;
                        z12 = z6;
                        z11 = z7;
                        acaVar4 = acaVar2;
                        z14 = z8;
                        obj4 = obj;
                    } catch (Exception e3) {
                        e = e3;
                        acaVar = acaVar2;
                        String str3 = "write javaBean error";
                        if (obj2 != null) {
                            try {
                                str3 = "write javaBean error, fieldName : " + obj2;
                            } catch (Throwable th2) {
                                th = th2;
                                cnuVar.f13198b = acaVar;
                                throw th;
                            }
                        }
                        throw new bfj(str3, e);
                    } catch (Throwable th3) {
                        th = th3;
                        acaVar = acaVar2;
                        cnuVar.f13198b = acaVar;
                        throw th;
                    }
                    acaVar2 = acaVar4;
                    z7 = z11;
                    z8 = z14;
                    arrayList5 = arrayList6;
                }
                aca acaVar5 = acaVar4;
                char c6 = c5;
                arrayList2 = cnuVar.f13199c;
                if (arrayList2 != null) {
                    Iterator it6 = arrayList2.iterator();
                    if (it6.hasNext()) {
                        awf.e(it6.next());
                        throw null;
                    }
                }
                if (ekzVarArr.length > 0 && (cxaVar.k & gar.PrettyFormat.mask) != 0) {
                    cnuVar.i--;
                    cnuVar.p();
                }
                i2 = cxaVar.m + 1;
                if (i2 > cxaVar.l.length) {
                    cxaVar.u(i2);
                }
                cxaVar.l[cxaVar.m] = c6;
                cxaVar.m = i2;
                cnuVar.f13198b = acaVar5;
            }
            if (obj4.getClass() != type) {
                cnuVar.f13202f.getClass();
                cxaVar.p("@type", false);
                String str4 = this.f20241d;
                if (str4 == null) {
                    str4 = obj4.getClass().getName();
                }
                cnuVar.n(str4);
                c2 = ',';
                arrayList = cnuVar.l;
                if (arrayList != null) {
                }
                if (c2 == ',') {
                }
                int i122 = cxaVar.k;
                if ((gar.QuoteFieldNames.mask & i122) == 0) {
                }
                if ((gar.UseSingleQuotes.mask & i122) != 0) {
                }
                if ((i122 & gar.NotWriteDefaultValue.mask) != 0) {
                }
                ArrayList arrayList62 = cnuVar.f13201e;
                ArrayList arrayList72 = cnuVar.m;
                ArrayList arrayList82 = cnuVar.f13203g;
                ArrayList arrayList92 = cnuVar.f13197a;
                boolean z142 = z10;
                i = 0;
                while (i < ekzVarArr.length) {
                }
                aca acaVar52 = acaVar4;
                char c62 = c5;
                arrayList2 = cnuVar.f13199c;
                if (arrayList2 != null) {
                }
                if (ekzVarArr.length > 0) {
                    cnuVar.i--;
                    cnuVar.p();
                }
                i2 = cxaVar.m + 1;
                if (i2 > cxaVar.l.length) {
                }
                cxaVar.l[cxaVar.m] = c62;
                cxaVar.m = i2;
                cnuVar.f13198b = acaVar52;
            }
            c2 = 0;
            arrayList = cnuVar.l;
            if (arrayList != null) {
            }
            if (c2 == ',') {
            }
            int i1222 = cxaVar.k;
            if ((gar.QuoteFieldNames.mask & i1222) == 0) {
            }
            if ((gar.UseSingleQuotes.mask & i1222) != 0) {
            }
            if ((i1222 & gar.NotWriteDefaultValue.mask) != 0) {
            }
            ArrayList arrayList622 = cnuVar.f13201e;
            ArrayList arrayList722 = cnuVar.m;
            ArrayList arrayList822 = cnuVar.f13203g;
            ArrayList arrayList922 = cnuVar.f13197a;
            boolean z1422 = z10;
            i = 0;
            while (i < ekzVarArr.length) {
            }
            aca acaVar522 = acaVar4;
            char c622 = c5;
            arrayList2 = cnuVar.f13199c;
            if (arrayList2 != null) {
            }
            if (ekzVarArr.length > 0) {
            }
            i2 = cxaVar.m + 1;
            if (i2 > cxaVar.l.length) {
            }
            cxaVar.l[cxaVar.m] = c622;
            cxaVar.m = i2;
            cnuVar.f13198b = acaVar522;
        } catch (Exception e4) {
            e = e4;
            acaVar = acaVar4;
        } catch (Throwable th4) {
            th = th4;
            acaVar = acaVar4;
        }
    }
}
