package g;

import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class dhm implements cma {

    /* renamed from: a, reason: collision with root package name */
    public final ctt f14183a;

    /* renamed from: b, reason: collision with root package name */
    public final bgf[] f14184b;

    /* renamed from: c, reason: collision with root package name */
    public final bgf[] f14185c;

    /* renamed from: d, reason: collision with root package name */
    public final Class f14186d;

    /* JADX WARN: Code restructure failed: missing block: B:192:0x037e, code lost:
    
        if (java.util.Collection.class.isAssignableFrom(r4) == false) goto L160;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public dhm(mh mhVar, Class cls, Type type) {
        Constructor<?> constructor;
        Constructor<?> constructor2;
        Class<btq> cls2;
        Class<Map> cls3;
        ctt cttVar;
        Class cls4;
        Method[] methodArr;
        int i;
        int i2;
        String str;
        int i3;
        Class cls5;
        int i4;
        Field[] fieldArr;
        int i5;
        Class<ecz> cls6;
        Class<?> returnType;
        String str2;
        int i6;
        String e2;
        btq btqVar;
        Constructor<?> constructor3;
        Method method;
        btq btqVar2;
        btq btqVar3;
        Class cls7 = cls;
        int modifiers = cls7.getModifiers();
        ArrayList arrayList = new ArrayList();
        int i7 = modifiers & 1024;
        if (i7 == 0) {
            try {
                constructor = cls7.getDeclaredConstructor(null);
            } catch (Exception unused) {
                constructor = null;
            }
            if (constructor == null && cls7.isMemberClass() && (modifiers & 8) == 0) {
                for (Constructor<?> constructor4 : cls7.getDeclaredConstructors()) {
                    Class<?>[] parameterTypes = constructor4.getParameterTypes();
                    if (parameterTypes.length == 1 && parameterTypes[0].equals(cls7.getDeclaringClass())) {
                        constructor2 = constructor4;
                        break;
                    }
                }
            }
            constructor2 = constructor;
        } else {
            constructor2 = null;
        }
        Method[] methods = cls7.getMethods();
        Field[] declaredFields = cls7.getDeclaredFields();
        Class<ecz> cls8 = ecz.class;
        if (constructor2 == null && !cls7.isInterface() && i7 == 0) {
            Constructor<?>[] declaredConstructors = cls7.getDeclaredConstructors();
            int length = declaredConstructors.length;
            int i8 = 0;
            while (true) {
                if (i8 >= length) {
                    constructor3 = null;
                    break;
                }
                constructor3 = declaredConstructors[i8];
                if (((gfu) constructor3.getAnnotation(gfu.class)) != null) {
                    break;
                } else {
                    i8++;
                }
            }
            if (constructor3 != null) {
                dtu.x(cls7, constructor3, modifiers);
                Class<?>[] parameterTypes2 = constructor3.getParameterTypes();
                Type[] genericParameterTypes = constructor3.getGenericParameterTypes();
                for (int i9 = 0; i9 < parameterTypes2.length; i9++) {
                    Annotation[] annotationArr = constructor3.getParameterAnnotations()[i9];
                    int length2 = annotationArr.length;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= length2) {
                            btqVar3 = null;
                            break;
                        }
                        Annotation annotation = annotationArr[i10];
                        if (annotation instanceof btq) {
                            btqVar3 = (btq) annotation;
                            break;
                        }
                        i10++;
                    }
                    if (btqVar3 == null) {
                        throw new bfj("illegal json creator");
                    }
                    Class<?> cls9 = parameterTypes2[i9];
                    Type type2 = genericParameterTypes[i9];
                    Field u = dtu.u(cls7, btqVar3.name(), declaredFields);
                    if (u != null) {
                        dtu.x(cls7, u, modifiers);
                    }
                    int ordinal = btqVar3.ordinal();
                    gar.b(btqVar3.serialzeFeatures());
                    ctt.j(arrayList, new bnu(btqVar3.name(), cls9, type2, u, ordinal));
                }
                int size = arrayList.size();
                bnu[] bnuVarArr = new bnu[size];
                arrayList.toArray(bnuVarArr);
                bnu[] bnuVarArr2 = new bnu[size];
                System.arraycopy(bnuVarArr, 0, bnuVarArr2, 0, size);
                Arrays.sort(bnuVarArr2);
                cls4 = cls;
                cttVar = new ctt(cls4, null, constructor3, null, bnuVarArr, bnuVarArr2, (ecz) cls7.getAnnotation(cls8));
            } else {
                int length3 = methods.length;
                int i11 = 0;
                while (true) {
                    if (i11 >= length3) {
                        method = null;
                        break;
                    }
                    method = methods[i11];
                    if (Modifier.isStatic(method.getModifiers()) && cls7.isAssignableFrom(method.getReturnType()) && ((gfu) method.getAnnotation(gfu.class)) != null) {
                        break;
                    } else {
                        i11++;
                    }
                }
                if (method == null) {
                    throw new bfj("default constructor not found. " + cls7);
                }
                dtu.x(cls7, method, modifiers);
                Class<?>[] parameterTypes3 = method.getParameterTypes();
                Type[] genericParameterTypes2 = method.getGenericParameterTypes();
                for (int i12 = 0; i12 < parameterTypes3.length; i12++) {
                    Annotation[] annotationArr2 = method.getParameterAnnotations()[i12];
                    int length4 = annotationArr2.length;
                    int i13 = 0;
                    while (true) {
                        if (i13 >= length4) {
                            btqVar2 = null;
                            break;
                        }
                        Annotation annotation2 = annotationArr2[i13];
                        if (annotation2 instanceof btq) {
                            btqVar2 = (btq) annotation2;
                            break;
                        }
                        i13++;
                    }
                    if (btqVar2 == null) {
                        throw new bfj("illegal json creator");
                    }
                    Class<?> cls10 = parameterTypes3[i12];
                    Type type3 = genericParameterTypes2[i12];
                    Field u2 = dtu.u(cls7, btqVar2.name(), declaredFields);
                    int ordinal2 = btqVar2.ordinal();
                    gar.b(btqVar2.serialzeFeatures());
                    ctt.j(arrayList, new bnu(btqVar2.name(), cls10, type3, u2, ordinal2));
                }
                int size2 = arrayList.size();
                bnu[] bnuVarArr3 = new bnu[size2];
                arrayList.toArray(bnuVarArr3);
                bnu[] bnuVarArr4 = new bnu[size2];
                System.arraycopy(bnuVarArr3, 0, bnuVarArr4, 0, size2);
                Arrays.sort(bnuVarArr4);
                Method method2 = method;
                bnu[] bnuVarArr5 = Arrays.equals(bnuVarArr3, bnuVarArr4) ? bnuVarArr3 : bnuVarArr4;
                cls4 = cls7;
                cttVar = new ctt(cls4, null, null, method2, bnuVarArr3, bnuVarArr5, (ecz) cls7.getAnnotation(cls8));
            }
        } else {
            if (constructor2 != null) {
                dtu.x(cls7, constructor2, modifiers);
            }
            int length5 = methods.length;
            int i14 = 0;
            while (true) {
                cls2 = btq.class;
                if (i14 >= length5) {
                    break;
                }
                Field[] fieldArr2 = declaredFields;
                Method method3 = methods[i14];
                String name = method3.getName();
                if (name.length() >= 4 && !Modifier.isStatic(method3.getModifiers()) && (((returnType = method3.getReturnType()) == Void.TYPE || returnType == method3.getDeclaringClass()) && method3.getParameterTypes().length == 1 && method3.getDeclaringClass() != Object.class)) {
                    btq btqVar4 = (btq) method3.getAnnotation(cls2);
                    btq v = btqVar4 == null ? dtu.v(cls7, method3) : btqVar4;
                    if (v == null) {
                        str2 = name;
                        i6 = 0;
                    } else if (v.deserialize()) {
                        str2 = name;
                        i6 = v.ordinal();
                        gar.b(v.serialzeFeatures());
                        if (v.name().length() != 0) {
                            i4 = i14;
                            i5 = length5;
                            cls6 = cls8;
                            fieldArr = fieldArr2;
                            ctt.j(arrayList, new bnu(v.name(), method3, null, cls7, type, i6, v, null));
                            dtu.x(cls7, method3, modifiers);
                            i14 = i4 + 1;
                            cls8 = cls6;
                            declaredFields = fieldArr;
                            length5 = i5;
                        }
                    }
                    i4 = i14;
                    fieldArr = fieldArr2;
                    i5 = length5;
                    cls6 = cls8;
                    if (str2.startsWith("set")) {
                        char charAt = str2.charAt(3);
                        if (Character.isUpperCase(charAt)) {
                            boolean z = dtu.f14793a;
                            e2 = Character.toLowerCase(str2.charAt(3)) + str2.substring(4);
                        } else if (charAt == '_') {
                            e2 = str2.substring(4);
                        } else if (charAt == 'f') {
                            e2 = str2.substring(3);
                        } else if (str2.length() >= 5 && Character.isUpperCase(str2.charAt(4))) {
                            e2 = dtu.e(str2.substring(3));
                        }
                        String str3 = e2;
                        Field u3 = dtu.u(cls7, str3, fieldArr);
                        if (u3 == null && method3.getParameterTypes()[0] == Boolean.TYPE) {
                            u3 = dtu.u(cls7, "is" + Character.toUpperCase(str3.charAt(0)) + str3.substring(1), fieldArr);
                        }
                        Field field = u3;
                        if (field != null && (btqVar = (btq) field.getAnnotation(cls2)) != null) {
                            i6 = btqVar.ordinal();
                            gar.b(btqVar.serialzeFeatures());
                            if (btqVar.name().length() != 0) {
                                ctt.j(arrayList, new bnu(btqVar.name(), method3, field, cls7, type, i6, v, btqVar));
                                cls7 = cls;
                            } else if (v == null) {
                                v = btqVar;
                            }
                        }
                        cls7 = cls;
                        ctt.j(arrayList, new bnu(str3, method3, null, cls7, type, i6, v, null));
                        dtu.x(cls7, method3, modifiers);
                    }
                    i14 = i4 + 1;
                    cls8 = cls6;
                    declaredFields = fieldArr;
                    length5 = i5;
                }
                i4 = i14;
                fieldArr = fieldArr2;
                i5 = length5;
                cls6 = cls8;
                i14 = i4 + 1;
                cls8 = cls6;
                declaredFields = fieldArr;
                length5 = i5;
            }
            Field[] fieldArr3 = declaredFields;
            Class<ecz> cls11 = cls8;
            ArrayList arrayList2 = new ArrayList(fieldArr3.length);
            int length6 = fieldArr3.length;
            int i15 = 0;
            while (true) {
                cls3 = Map.class;
                if (i15 >= length6) {
                    break;
                }
                Field field2 = fieldArr3[i15];
                int modifiers2 = field2.getModifiers();
                if ((modifiers2 & 8) == 0) {
                    if ((modifiers2 & 16) != 0) {
                        Class<?> type4 = field2.getType();
                        if (!cls3.isAssignableFrom(type4)) {
                        }
                    }
                    if ((field2.getModifiers() & 1) != 0) {
                        arrayList2.add(field2);
                    }
                    i15++;
                }
                i15++;
            }
            Class superclass = cls7.getSuperclass();
            while (superclass != null && superclass != Object.class) {
                Field[] declaredFields2 = superclass.getDeclaredFields();
                int length7 = declaredFields2.length;
                int i16 = 0;
                while (i16 < length7) {
                    Field field3 = declaredFields2[i16];
                    int modifiers3 = field3.getModifiers();
                    if ((modifiers3 & 8) != 0) {
                        cls5 = superclass;
                    } else {
                        if ((modifiers3 & 16) != 0) {
                            cls5 = superclass;
                            Class<?> type5 = field3.getType();
                            if (!cls3.isAssignableFrom(type5) && !Collection.class.isAssignableFrom(type5)) {
                            }
                        } else {
                            cls5 = superclass;
                        }
                        if ((modifiers3 & 1) != 0) {
                            arrayList2.add(field3);
                        }
                    }
                    i16++;
                    superclass = cls5;
                }
                superclass = superclass.getSuperclass();
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                Field field4 = (Field) it.next();
                String name2 = field4.getName();
                int size3 = arrayList.size();
                boolean z2 = false;
                for (int i17 = 0; i17 < size3; i17++) {
                    if (((bnu) arrayList.get(i17)).i.equals(name2)) {
                        z2 = true;
                    }
                }
                if (!z2) {
                    btq btqVar5 = (btq) field4.getAnnotation(cls2);
                    if (btqVar5 != null) {
                        int ordinal3 = btqVar5.ordinal();
                        gar.b(btqVar5.serialzeFeatures());
                        name2 = btqVar5.name().length() != 0 ? btqVar5.name() : name2;
                        i3 = ordinal3;
                    } else {
                        i3 = 0;
                    }
                    dtu.x(cls7, field4, modifiers);
                    ctt.j(arrayList, new bnu(name2, null, field4, cls7, type, i3, null, btqVar5));
                    cls7 = cls;
                    cls3 = cls3;
                    cls2 = cls2;
                    it = it;
                    constructor2 = constructor2;
                }
            }
            Class<Map> cls12 = cls3;
            Constructor<?> constructor5 = constructor2;
            Class<btq> cls13 = cls2;
            Method[] methods2 = cls.getMethods();
            int length8 = methods2.length;
            int i18 = 0;
            while (i18 < length8) {
                int i19 = i18;
                Method method4 = methods2[i19];
                String name3 = method4.getName();
                if (name3.length() >= 4 && !Modifier.isStatic(method4.getModifiers()) && name3.startsWith("get") && Character.isUpperCase(name3.charAt(3)) && method4.getParameterTypes().length == 0) {
                    Class<?> returnType2 = method4.getReturnType();
                    if (Collection.class.isAssignableFrom(returnType2) || cls12.isAssignableFrom(returnType2)) {
                        btq btqVar6 = (btq) method4.getAnnotation(cls13);
                        if (btqVar6 != null) {
                            str = btqVar6.name();
                            if (str.length() > 0) {
                                i = length8;
                                i2 = i19;
                                methodArr = methods2;
                                ctt.j(arrayList, new bnu(str, method4, null, cls, type, 0, btqVar6, null));
                                dtu.x(cls, method4, modifiers);
                                i18 = i2 + 1;
                                methods2 = methodArr;
                                length8 = i;
                            }
                        }
                        str = Character.toLowerCase(name3.charAt(3)) + name3.substring(4);
                        i = length8;
                        i2 = i19;
                        methodArr = methods2;
                        ctt.j(arrayList, new bnu(str, method4, null, cls, type, 0, btqVar6, null));
                        dtu.x(cls, method4, modifiers);
                        i18 = i2 + 1;
                        methods2 = methodArr;
                        length8 = i;
                    }
                }
                methodArr = methods2;
                i = length8;
                i2 = i19;
                i18 = i2 + 1;
                methods2 = methodArr;
                length8 = i;
            }
            int size4 = arrayList.size();
            bnu[] bnuVarArr6 = new bnu[size4];
            arrayList.toArray(bnuVarArr6);
            bnu[] bnuVarArr7 = new bnu[size4];
            System.arraycopy(bnuVarArr6, 0, bnuVarArr7, 0, size4);
            Arrays.sort(bnuVarArr7);
            cls4 = cls;
            cttVar = new ctt(cls4, constructor5, null, null, bnuVarArr6, bnuVarArr7, (ecz) cls.getAnnotation(cls11));
        }
        Class cls14 = cls4;
        bnu[] bnuVarArr8 = (bnu[]) cttVar.f13487a;
        this.f14186d = cls14;
        this.f14183a = cttVar;
        bnu[] bnuVarArr9 = (bnu[]) cttVar.i;
        this.f14185c = new bgf[bnuVarArr8.length];
        int length9 = bnuVarArr8.length;
        for (int i20 = 0; i20 < length9; i20++) {
            bnu bnuVar = bnuVarArr8[i20];
            Class cls15 = bnuVar.f11884b;
            this.f14185c[i20] = (cls15 == List.class || cls15 == ArrayList.class || (cls15.isArray() && !cls15.getComponentType().isPrimitive())) ? new aax(bnuVar) : new fpj(0, bnuVar);
        }
        this.f14184b = new bgf[bnuVarArr9.length];
        int length10 = bnuVarArr9.length;
        for (int i21 = 0; i21 < length10; i21++) {
            this.f14184b[i21] = f(bnuVarArr9[i21].i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01af A[Catch: IllegalAccessException -> 0x003c, TryCatch #0 {IllegalAccessException -> 0x003c, blocks: (B:9:0x0029, B:11:0x002d, B:13:0x0038, B:14:0x0047, B:16:0x004b, B:19:0x005a, B:23:0x0056, B:26:0x0065, B:29:0x0074, B:30:0x0070, B:31:0x007b, B:32:0x003f, B:35:0x008a, B:38:0x0092, B:40:0x00b9, B:41:0x00c0, B:43:0x00c4, B:46:0x00d3, B:47:0x00cf, B:50:0x00de, B:53:0x00ed, B:54:0x00e9, B:55:0x00f4, B:56:0x00bd, B:59:0x009b, B:61:0x00a5, B:64:0x00b4, B:65:0x00b0, B:67:0x00f8, B:68:0x0110, B:71:0x0111, B:73:0x0117, B:75:0x0121, B:76:0x012d, B:78:0x0133, B:81:0x0142, B:83:0x013e, B:86:0x014e, B:89:0x015d, B:91:0x0159, B:92:0x0165, B:94:0x0125, B:95:0x016a, B:97:0x016e, B:100:0x019d, B:102:0x01af, B:103:0x01ba, B:105:0x01c0, B:108:0x01cf, B:110:0x01cb, B:113:0x01db, B:116:0x01ea, B:118:0x01e6, B:119:0x01f2, B:121:0x01b3, B:122:0x0181, B:125:0x018e, B:132:0x01a9, B:133:0x01f7, B:135:0x01fd, B:138:0x0207, B:141:0x0242, B:143:0x024b, B:146:0x025a, B:148:0x0256, B:151:0x0266, B:154:0x0275, B:156:0x0271, B:157:0x027d, B:159:0x0211, B:164:0x021e, B:166:0x022c, B:167:0x023a, B:169:0x0282, B:170:0x029c, B:174:0x02a1, B:177:0x02ab, B:179:0x02bd, B:182:0x02cc, B:184:0x02c8, B:187:0x02d8, B:190:0x02e7, B:192:0x02e3, B:193:0x02ef, B:195:0x02f3, B:198:0x02fd, B:201:0x030c, B:202:0x0330, B:205:0x033c, B:210:0x0343, B:211:0x0348, B:214:0x034d, B:219:0x0354, B:220:0x0359, B:222:0x0308, B:225:0x0317, B:228:0x0326, B:229:0x0322, B:230:0x032d), top: B:8:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01c0 A[Catch: IllegalAccessException -> 0x003c, TryCatch #0 {IllegalAccessException -> 0x003c, blocks: (B:9:0x0029, B:11:0x002d, B:13:0x0038, B:14:0x0047, B:16:0x004b, B:19:0x005a, B:23:0x0056, B:26:0x0065, B:29:0x0074, B:30:0x0070, B:31:0x007b, B:32:0x003f, B:35:0x008a, B:38:0x0092, B:40:0x00b9, B:41:0x00c0, B:43:0x00c4, B:46:0x00d3, B:47:0x00cf, B:50:0x00de, B:53:0x00ed, B:54:0x00e9, B:55:0x00f4, B:56:0x00bd, B:59:0x009b, B:61:0x00a5, B:64:0x00b4, B:65:0x00b0, B:67:0x00f8, B:68:0x0110, B:71:0x0111, B:73:0x0117, B:75:0x0121, B:76:0x012d, B:78:0x0133, B:81:0x0142, B:83:0x013e, B:86:0x014e, B:89:0x015d, B:91:0x0159, B:92:0x0165, B:94:0x0125, B:95:0x016a, B:97:0x016e, B:100:0x019d, B:102:0x01af, B:103:0x01ba, B:105:0x01c0, B:108:0x01cf, B:110:0x01cb, B:113:0x01db, B:116:0x01ea, B:118:0x01e6, B:119:0x01f2, B:121:0x01b3, B:122:0x0181, B:125:0x018e, B:132:0x01a9, B:133:0x01f7, B:135:0x01fd, B:138:0x0207, B:141:0x0242, B:143:0x024b, B:146:0x025a, B:148:0x0256, B:151:0x0266, B:154:0x0275, B:156:0x0271, B:157:0x027d, B:159:0x0211, B:164:0x021e, B:166:0x022c, B:167:0x023a, B:169:0x0282, B:170:0x029c, B:174:0x02a1, B:177:0x02ab, B:179:0x02bd, B:182:0x02cc, B:184:0x02c8, B:187:0x02d8, B:190:0x02e7, B:192:0x02e3, B:193:0x02ef, B:195:0x02f3, B:198:0x02fd, B:201:0x030c, B:202:0x0330, B:205:0x033c, B:210:0x0343, B:211:0x0348, B:214:0x034d, B:219:0x0354, B:220:0x0359, B:222:0x0308, B:225:0x0317, B:228:0x0326, B:229:0x0322, B:230:0x032d), top: B:8:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01b3 A[Catch: IllegalAccessException -> 0x003c, TryCatch #0 {IllegalAccessException -> 0x003c, blocks: (B:9:0x0029, B:11:0x002d, B:13:0x0038, B:14:0x0047, B:16:0x004b, B:19:0x005a, B:23:0x0056, B:26:0x0065, B:29:0x0074, B:30:0x0070, B:31:0x007b, B:32:0x003f, B:35:0x008a, B:38:0x0092, B:40:0x00b9, B:41:0x00c0, B:43:0x00c4, B:46:0x00d3, B:47:0x00cf, B:50:0x00de, B:53:0x00ed, B:54:0x00e9, B:55:0x00f4, B:56:0x00bd, B:59:0x009b, B:61:0x00a5, B:64:0x00b4, B:65:0x00b0, B:67:0x00f8, B:68:0x0110, B:71:0x0111, B:73:0x0117, B:75:0x0121, B:76:0x012d, B:78:0x0133, B:81:0x0142, B:83:0x013e, B:86:0x014e, B:89:0x015d, B:91:0x0159, B:92:0x0165, B:94:0x0125, B:95:0x016a, B:97:0x016e, B:100:0x019d, B:102:0x01af, B:103:0x01ba, B:105:0x01c0, B:108:0x01cf, B:110:0x01cb, B:113:0x01db, B:116:0x01ea, B:118:0x01e6, B:119:0x01f2, B:121:0x01b3, B:122:0x0181, B:125:0x018e, B:132:0x01a9, B:133:0x01f7, B:135:0x01fd, B:138:0x0207, B:141:0x0242, B:143:0x024b, B:146:0x025a, B:148:0x0256, B:151:0x0266, B:154:0x0275, B:156:0x0271, B:157:0x027d, B:159:0x0211, B:164:0x021e, B:166:0x022c, B:167:0x023a, B:169:0x0282, B:170:0x029c, B:174:0x02a1, B:177:0x02ab, B:179:0x02bd, B:182:0x02cc, B:184:0x02c8, B:187:0x02d8, B:190:0x02e7, B:192:0x02e3, B:193:0x02ef, B:195:0x02f3, B:198:0x02fd, B:201:0x030c, B:202:0x0330, B:205:0x033c, B:210:0x0343, B:211:0x0348, B:214:0x034d, B:219:0x0354, B:220:0x0359, B:222:0x0308, B:225:0x0317, B:228:0x0326, B:229:0x0322, B:230:0x032d), top: B:8:0x0029 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(ccw ccwVar, Type type, Object obj) {
        Enum r13;
        boolean z;
        int i;
        char c2;
        String str;
        fzg fzgVar = ccwVar.h;
        Object j = j(ccwVar, type);
        bgf[] bgfVarArr = this.f14185c;
        int length = bgfVarArr.length;
        int i2 = 0;
        while (i2 < length) {
            char c3 = i2 == length + (-1) ? ']' : ',';
            bgf bgfVar = bgfVarArr[i2];
            bnu bnuVar = (bnu) bgfVar.z;
            Class cls = bnuVar.f11884b;
            Field field = bnuVar.f11886d;
            boolean z2 = bnuVar.f11889g;
            try {
                if (cls == Integer.TYPE) {
                    long aq = fzgVar.aq();
                    String str2 = fzgVar.k;
                    int i3 = fzgVar.j;
                    int i4 = (int) aq;
                    if (z2) {
                        field.setInt(j, i4);
                    } else {
                        bgfVar.ag(j, new Integer(i4));
                    }
                    char c4 = fzgVar.l;
                    if (c4 == ',') {
                        int i5 = fzgVar.n + 1;
                        fzgVar.n = i5;
                        fzgVar.l = i5 >= i3 ? (char) 26 : str2.charAt(i5);
                        fzgVar.o = 16;
                    } else if (c4 == ']') {
                        int i6 = fzgVar.n + 1;
                        fzgVar.n = i6;
                        fzgVar.l = i6 >= i3 ? (char) 26 : str2.charAt(i6);
                        fzgVar.o = 15;
                    } else {
                        fzgVar.az();
                    }
                } else if (cls == String.class) {
                    char c5 = fzgVar.l;
                    int i7 = fzgVar.j;
                    String str3 = fzgVar.k;
                    if (c5 == '\"') {
                        str = fzgVar.ae();
                    } else {
                        if (c5 != 'n' || !str3.startsWith("null", fzgVar.n)) {
                            throw new bfj("not match string. feild : " + obj);
                        }
                        int i8 = fzgVar.n + 4;
                        fzgVar.n = i8;
                        fzgVar.l = i8 >= i7 ? (char) 26 : str3.charAt(i8);
                        str = null;
                    }
                    if (z2) {
                        field.set(j, str);
                    } else {
                        bgfVar.ag(j, str);
                    }
                    char c6 = fzgVar.l;
                    if (c6 == ',') {
                        int i9 = fzgVar.n + 1;
                        fzgVar.n = i9;
                        fzgVar.l = i9 >= i7 ? (char) 26 : str3.charAt(i9);
                        fzgVar.o = 16;
                    } else if (c6 == ']') {
                        int i10 = fzgVar.n + 1;
                        fzgVar.n = i10;
                        fzgVar.l = i10 >= i7 ? (char) 26 : str3.charAt(i10);
                        fzgVar.o = 15;
                    } else {
                        fzgVar.az();
                    }
                } else {
                    if (cls == Long.TYPE) {
                        long aq2 = fzgVar.aq();
                        String str4 = fzgVar.k;
                        int i11 = fzgVar.j;
                        if (z2) {
                            field.setLong(j, aq2);
                        } else {
                            bgfVar.ag(j, new Long(aq2));
                        }
                        char c7 = fzgVar.l;
                        if (c7 == ',') {
                            int i12 = fzgVar.n + 1;
                            fzgVar.n = i12;
                            fzgVar.l = i12 >= i11 ? (char) 26 : str4.charAt(i12);
                            fzgVar.o = 16;
                        } else if (c7 == ']') {
                            int i13 = fzgVar.n + 1;
                            fzgVar.n = i13;
                            fzgVar.l = i13 >= i11 ? (char) 26 : str4.charAt(i13);
                            fzgVar.o = 15;
                        } else {
                            fzgVar.az();
                        }
                    } else if (cls == Boolean.TYPE) {
                        String str5 = fzgVar.k;
                        String str6 = fzgVar.k;
                        int i14 = fzgVar.j;
                        if (str5.startsWith("false", fzgVar.n)) {
                            i = 5;
                            z = false;
                        } else if (str5.startsWith("true", fzgVar.n)) {
                            z = true;
                            i = 4;
                        } else {
                            char c8 = fzgVar.l;
                            if (c8 == '1') {
                                z = true;
                            } else if (c8 == '0') {
                                z = false;
                            } else {
                                fzgVar.r = -1;
                                z = false;
                                if (z2) {
                                    bgfVar.ag(j, Boolean.valueOf(z));
                                } else {
                                    field.setBoolean(j, z);
                                }
                                c2 = fzgVar.l;
                                if (c2 != ',') {
                                    int i15 = fzgVar.n + 1;
                                    fzgVar.n = i15;
                                    fzgVar.l = i15 >= i14 ? (char) 26 : str6.charAt(i15);
                                    fzgVar.o = 16;
                                } else if (c2 == ']') {
                                    int i16 = fzgVar.n + 1;
                                    fzgVar.n = i16;
                                    fzgVar.l = i16 >= i14 ? (char) 26 : str6.charAt(i16);
                                    fzgVar.o = 15;
                                } else {
                                    fzgVar.az();
                                }
                            }
                            i = 1;
                        }
                        int i17 = fzgVar.n + i;
                        fzgVar.n = i17;
                        fzgVar.l = fzgVar.bk(i17);
                        if (z2) {
                        }
                        c2 = fzgVar.l;
                        if (c2 != ',') {
                        }
                    } else if (cls.isEnum()) {
                        char c9 = fzgVar.l;
                        String str7 = fzgVar.k;
                        int i18 = fzgVar.j;
                        if (c9 == '\"') {
                            String bl = fzgVar.bl(ccwVar.i);
                            r13 = bl == null ? null : Enum.valueOf(cls, bl);
                        } else {
                            if (c9 < '0' || c9 > '9') {
                                throw new bfj("illegal enum." + fzgVar.ac());
                            }
                            int aq3 = (int) fzgVar.aq();
                            fpj fpjVar = (fpj) bgfVar;
                            mh mhVar = ccwVar.k;
                            if (fpjVar.f17201a == null) {
                                bnu bnuVar2 = (bnu) fpjVar.z;
                                fpjVar.f17201a = mhVar.e(bnuVar2.f11883a, bnuVar2.f11884b);
                            }
                            r13 = ((hev) fpjVar.f17201a).f19360b[aq3];
                        }
                        bgfVar.ag(j, r13);
                        char c10 = fzgVar.l;
                        if (c10 == ',') {
                            int i19 = fzgVar.n + 1;
                            fzgVar.n = i19;
                            fzgVar.l = i19 >= i18 ? (char) 26 : str7.charAt(i19);
                            fzgVar.o = 16;
                        } else if (c10 == ']') {
                            int i20 = fzgVar.n + 1;
                            fzgVar.n = i20;
                            fzgVar.l = i20 >= i18 ? (char) 26 : str7.charAt(i20);
                            fzgVar.o = 15;
                        } else {
                            fzgVar.az();
                        }
                    } else {
                        if (cls == Date.class) {
                            char c11 = fzgVar.l;
                            String str8 = fzgVar.k;
                            int i21 = fzgVar.j;
                            if (c11 == '1') {
                                bgfVar.ag(j, new Date(fzgVar.aq()));
                                char c12 = fzgVar.l;
                                if (c12 == ',') {
                                    int i22 = fzgVar.n + 1;
                                    fzgVar.n = i22;
                                    fzgVar.l = i22 >= i21 ? (char) 26 : str8.charAt(i22);
                                    fzgVar.o = 16;
                                } else if (c12 == ']') {
                                    int i23 = fzgVar.n + 1;
                                    fzgVar.n = i23;
                                    fzgVar.l = i23 >= i21 ? (char) 26 : str8.charAt(i23);
                                    fzgVar.o = 15;
                                } else {
                                    fzgVar.az();
                                }
                            }
                        }
                        char c13 = fzgVar.l;
                        String str9 = fzgVar.k;
                        int i24 = fzgVar.j;
                        if (c13 == '[') {
                            int i25 = fzgVar.n + 1;
                            fzgVar.n = i25;
                            fzgVar.l = i25 >= i24 ? (char) 26 : str9.charAt(i25);
                            fzgVar.o = 14;
                        } else if (c13 == '{') {
                            int i26 = fzgVar.n + 1;
                            fzgVar.n = i26;
                            fzgVar.l = i26 >= i24 ? (char) 26 : str9.charAt(i26);
                            fzgVar.o = 12;
                        } else {
                            fzgVar.az();
                        }
                        bgfVar._t(j, bnuVar.f11883a, null, ccwVar);
                        if (c3 == ']') {
                            if (fzgVar.o != 15) {
                                throw new bfj("syntax error");
                            }
                        } else if (c3 == ',' && fzgVar.o != 16) {
                            throw new bfj("syntax error");
                        }
                    }
                    i2++;
                }
                i2++;
            } catch (IllegalAccessException e2) {
                throw new bfj(awf.ad(new StringBuilder("set "), bnuVar.i, AVErrorInfo.ERROR), (Throwable) e2);
            }
        }
        if (fzgVar.l != ',') {
            fzgVar.az();
            return j;
        }
        int i27 = fzgVar.n + 1;
        fzgVar.n = i27;
        fzgVar.l = i27 >= fzgVar.j ? (char) 26 : fzgVar.k.charAt(i27);
        fzgVar.o = 16;
        return j;
    }

    public final bgf f(String str) {
        if (str == null) {
            return null;
        }
        boolean z = this.f14183a.f13490d;
        int i = 0;
        bgf[] bgfVarArr = this.f14185c;
        if (z) {
            while (i < bgfVarArr.length) {
                if (((bnu) bgfVarArr[i].z).i.equalsIgnoreCase(str)) {
                    return bgfVarArr[i];
                }
                i++;
            }
            return null;
        }
        int length = bgfVarArr.length - 1;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int compareTo = ((bnu) bgfVarArr[i2].z).i.compareTo(str);
            if (compareTo < 0) {
                i = i2 + 1;
            } else {
                if (compareTo <= 0) {
                    return bgfVarArr[i2];
                }
                length = i2 - 1;
            }
        }
        return null;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // g.cma
    public java.lang.Object g(g.ccw r46, java.lang.reflect.Type r47, java.lang.Object r48) {
        /*
            Method dump skipped, instructions count: 1856
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g.dhm.g(g.ccw, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }

    public final boolean h(ccw ccwVar, String str, Object obj, Type type, HashMap hashMap) {
        fzg fzgVar = ccwVar.h;
        bgf f2 = f(str);
        if (f2 == null) {
            boolean startsWith = str.startsWith("is");
            for (bgf bgfVar : this.f14185c) {
                bnu bnuVar = (bnu) bgfVar.z;
                Class cls = bnuVar.f11884b;
                String str2 = bnuVar.i;
                if (str2.equalsIgnoreCase(str) || (startsWith && ((cls == Boolean.TYPE || cls == Boolean.class) && str2.equalsIgnoreCase(str.substring(2))))) {
                    f2 = bgfVar;
                    break;
                }
            }
        }
        if (f2 != null) {
            fzgVar.bp();
            f2._t(obj, type, hashMap, ccwVar);
            return true;
        }
        if ((fzgVar.w & cbj.IgnoreNotMatch.mask) == 0) {
            throw new bfj("setter not found, class " + this.f14186d.getName() + ", property " + str);
        }
        fzgVar.bp();
        ArrayList arrayList = ccwVar.f12661f;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                throw tn.c(it);
            }
        }
        ccwVar.x(null);
        ArrayList arrayList2 = ccwVar.f12660e;
        if (arrayList2 != null) {
            Iterator it2 = arrayList2.iterator();
            if (it2.hasNext()) {
                throw tn.c(it2);
            }
        }
        return false;
    }

    public final Object i(Map map, mh mhVar) {
        ctt cttVar = this.f14183a;
        Constructor constructor = (Constructor) cttVar.f13489c;
        Constructor constructor2 = (Constructor) cttVar.f13489c;
        if (constructor == null) {
            Object j = j(null, this.f14186d);
            for (Map.Entry entry : map.entrySet()) {
                bgf f2 = f((String) entry.getKey());
                if (f2 != null) {
                    Object value = entry.getValue();
                    bnu bnuVar = (bnu) f2.z;
                    Method method = bnuVar.k;
                    if (method != null) {
                        method.invoke(j, dtu.s(value, method.getGenericParameterTypes()[0], mhVar));
                    } else {
                        bnuVar.f11886d.set(j, dtu.s(value, bnuVar.f11883a, mhVar));
                    }
                }
            }
            return j;
        }
        bnu[] bnuVarArr = (bnu[]) cttVar.i;
        int length = bnuVarArr.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            objArr[i] = map.get(bnuVarArr[i].i);
        }
        if (constructor2 == null) {
            return null;
        }
        try {
            return constructor2.newInstance(objArr);
        } catch (Exception e2) {
            throw new bfj("create instance error, " + constructor2.toGenericString(), (Throwable) e2);
        }
    }

    public final Object j(ccw ccwVar, Type type) {
        boolean z = type instanceof Class;
        Class cls = this.f14186d;
        if (z && cls.isInterface()) {
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) type}, new cof((ccwVar.h.w & cbj.OrderedField.mask) != 0));
        }
        ctt cttVar = this.f14183a;
        Constructor constructor = (Constructor) cttVar.f13488b;
        if (constructor == null) {
            return null;
        }
        try {
            Object newInstance = cttVar.h == 0 ? constructor.newInstance(null) : constructor.newInstance(ccwVar.l.f17190f);
            if (ccwVar != null && (ccwVar.h.w & cbj.InitStringFieldAsEmpty.mask) != 0) {
                for (bnu bnuVar : (bnu[]) cttVar.i) {
                    if (bnuVar.f11884b == String.class) {
                        Method method = bnuVar.k;
                        if (method != null) {
                            method.invoke(newInstance, "");
                        } else {
                            bnuVar.f11886d.set(newInstance, "");
                        }
                    }
                }
            }
            return newInstance;
        } catch (Exception e2) {
            throw new bfj("create instance error, class ".concat(cls.getName()), (Throwable) e2);
        }
    }
}
