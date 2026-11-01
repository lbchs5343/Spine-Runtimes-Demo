package g;

import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class aax extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public final Type f9883a;

    /* renamed from: b, reason: collision with root package name */
    public cma f9884b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9885c;

    public aax(bnu bnuVar) {
        super(0, bnuVar);
        Type type = bnuVar.f11883a;
        Class cls = bnuVar.f11884b;
        if (type instanceof ParameterizedType) {
            this.f9883a = ((ParameterizedType) type).getActualTypeArguments()[0];
            this.f9885c = false;
        } else if (cls.isArray()) {
            this.f9883a = cls.getComponentType();
            this.f9885c = true;
        } else {
            this.f9883a = Object.class;
            this.f9885c = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x015b  */
    @Override // g.bgf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void _t(Object obj, Type type, Map map, ccw ccwVar) {
        grv grvVar;
        ArrayList arrayList;
        boolean z;
        Type type2;
        int i;
        Type type3;
        int i2;
        int i3;
        int i4;
        bnu bnuVar = (bnu) this.z;
        fzg fzgVar = ccwVar.h;
        mh mhVar = ccwVar.k;
        if (fzgVar.o == 8) {
            ag(obj, null);
            fzgVar.az();
            return;
        }
        boolean z2 = this.f9885c;
        Type type4 = this.f9883a;
        if (z2) {
            grv grvVar2 = new grv();
            grvVar2.k = type4;
            grvVar = grvVar2;
            arrayList = grvVar2;
        } else {
            grvVar = null;
            arrayList = new ArrayList();
        }
        fpd fpdVar = ccwVar.l;
        ccwVar.y(fpdVar, obj, bnuVar.i);
        cma cmaVar = this.f9884b;
        if (type instanceof ParameterizedType) {
            i = 0;
            if (type4 instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) type4;
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Class cls = parameterizedType.getRawType() instanceof Class ? (Class) parameterizedType.getRawType() : null;
                if (cls != null) {
                    int length = cls.getTypeParameters().length;
                    z = z2;
                    int i5 = 0;
                    while (i5 < length) {
                        int i6 = i5;
                        Class cls2 = cls;
                        if (cls.getTypeParameters()[i5].getName().equals(typeVariable.getName())) {
                            i4 = i6;
                            break;
                        } else {
                            i5 = i6 + 1;
                            cls = cls2;
                        }
                    }
                } else {
                    z = z2;
                }
                i4 = -1;
                if (i4 != -1) {
                    type3 = parameterizedType.getActualTypeArguments()[i4];
                    if (!type3.equals(type4)) {
                        cmaVar = mhVar.d(type3);
                    }
                } else {
                    type3 = type4;
                }
                type2 = type4;
            } else {
                z = z2;
                if (type4 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType2 = (ParameterizedType) type4;
                    Type[] actualTypeArguments = parameterizedType2.getActualTypeArguments();
                    if (actualTypeArguments.length == 1) {
                        Type type5 = actualTypeArguments[0];
                        if (type5 instanceof TypeVariable) {
                            TypeVariable typeVariable2 = (TypeVariable) type5;
                            ParameterizedType parameterizedType3 = (ParameterizedType) type;
                            Class cls3 = parameterizedType3.getRawType() instanceof Class ? (Class) parameterizedType3.getRawType() : null;
                            if (cls3 != null) {
                                int length2 = cls3.getTypeParameters().length;
                                type2 = type4;
                                int i7 = 0;
                                while (i7 < length2) {
                                    int i8 = length2;
                                    int i9 = i7;
                                    if (cls3.getTypeParameters()[i7].getName().equals(typeVariable2.getName())) {
                                        i3 = i9;
                                        break;
                                    } else {
                                        i7 = i9 + 1;
                                        length2 = i8;
                                    }
                                }
                            } else {
                                type2 = type4;
                            }
                            i3 = -1;
                            if (i3 != -1) {
                                actualTypeArguments[0] = parameterizedType3.getActualTypeArguments()[i3];
                                type3 = new cnn(actualTypeArguments, parameterizedType2.getOwnerType(), parameterizedType2.getRawType());
                            }
                        }
                    }
                }
                type2 = type4;
            }
            i2 = fzgVar.o;
            String str = fzgVar.k;
            int i10 = fzgVar.j;
            if (i2 == 14) {
                String concat = "exepct '[', but ".concat(gs.h(i2));
                if (type != null) {
                    concat = concat + ", type : " + type;
                }
                throw new bfj(concat);
            }
            if (cmaVar == null) {
                cmaVar = mhVar.d(type3);
                this.f9884b = cmaVar;
            }
            char c2 = fzgVar.l;
            if (c2 == '[') {
                int i11 = fzgVar.n + 1;
                fzgVar.n = i11;
                fzgVar.l = i11 >= i10 ? (char) 26 : str.charAt(i11);
                fzgVar.o = 14;
            } else if (c2 == '{') {
                int i12 = fzgVar.n + 1;
                fzgVar.n = i12;
                fzgVar.l = i12 >= i10 ? (char) 26 : str.charAt(i12);
                fzgVar.o = 12;
            } else if (c2 == '\"') {
                fzgVar.ak();
            } else if (c2 == ']') {
                int i13 = fzgVar.n + 1;
                fzgVar.n = i13;
                fzgVar.l = i13 >= i10 ? (char) 26 : str.charAt(i13);
                fzgVar.o = 15;
            } else {
                fzgVar.az();
            }
            while (true) {
                int i14 = fzgVar.o;
                if (i14 == 16) {
                    if ((cbj.AllowArbitraryCommas.mask & fzgVar.w) != 0) {
                        fzgVar.az();
                    }
                }
                if (i14 == 15) {
                    break;
                }
                arrayList.add(cmaVar.g(ccwVar, type3, Integer.valueOf(i)));
                if (ccwVar.f12658c == 1) {
                    ccwVar.n(arrayList);
                }
                if (fzgVar.o == 16) {
                    char c3 = fzgVar.l;
                    if (c3 == '[') {
                        int i15 = fzgVar.n + 1;
                        fzgVar.n = i15;
                        fzgVar.l = i15 >= i10 ? (char) 26 : str.charAt(i15);
                        fzgVar.o = 14;
                    } else {
                        if (c3 == '{') {
                            int i16 = fzgVar.n + 1;
                            fzgVar.n = i16;
                            fzgVar.l = i16 >= i10 ? (char) 26 : str.charAt(i16);
                            fzgVar.o = 12;
                        } else if (c3 == '\"') {
                            fzgVar.ak();
                        } else {
                            fzgVar.az();
                        }
                        i++;
                    }
                }
                i++;
            }
            if (fzgVar.l == ',') {
                int i17 = fzgVar.n + 1;
                fzgVar.n = i17;
                fzgVar.l = i17 >= i10 ? (char) 26 : str.charAt(i17);
                fzgVar.o = 16;
            } else {
                fzgVar.az();
            }
            ccwVar.v(fpdVar);
            Object obj2 = arrayList;
            if (z) {
                Object[] array = arrayList.toArray((Object[]) Array.newInstance((Class<?>) type2, arrayList.size()));
                grvVar.l = array;
                obj2 = array;
            }
            if (obj == null) {
                map.put(bnuVar.i, obj2);
                return;
            } else {
                ag(obj, obj2);
                return;
            }
        }
        z = z2;
        type2 = type4;
        i = 0;
        type3 = type2;
        i2 = fzgVar.o;
        String str2 = fzgVar.k;
        int i102 = fzgVar.j;
        if (i2 == 14) {
        }
    }
}
