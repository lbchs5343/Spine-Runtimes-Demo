package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* loaded from: classes.dex */
public final class bnu implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final Type f11883a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f11884b;

    /* renamed from: c, reason: collision with root package name */
    public final char[] f11885c;

    /* renamed from: d, reason: collision with root package name */
    public final Field f11886d;

    /* renamed from: e, reason: collision with root package name */
    public final String f11887e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f11888f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f11889g;
    public final boolean h;
    public final String i;
    public final boolean j;
    public final Method k;
    public final int l;

    public bnu(String str, Class cls, Type type, Field field, int i) {
        this.i = str;
        this.f11884b = cls;
        this.f11883a = type;
        this.k = null;
        this.f11886d = field;
        this.l = i;
        this.f11888f = cls.isEnum();
        if (field != null) {
            int modifiers = field.getModifiers();
            this.f11889g = true;
            this.h = Modifier.isTransient(modifiers);
        } else {
            this.f11889g = false;
            this.h = false;
        }
        this.j = false;
        int length = str.length();
        char[] cArr = new char[length + 3];
        this.f11885c = cArr;
        str.getChars(0, str.length(), cArr, 1);
        cArr[0] = '\"';
        cArr[length + 1] = '\"';
        cArr[length + 2] = ':';
        this.f11887e = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
    
        if (r11.trim().length() == 0) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public bnu(String str, Method method, Field field, Class cls, Type type, int i, btq btqVar, btq btqVar2) {
        String str2;
        Type genericType;
        Class<?> cls2;
        this.i = str;
        this.k = method;
        this.f11886d = field;
        this.l = i;
        btqVar = btqVar2 != null ? btqVar2 : btqVar;
        Type type2 = null;
        if (btqVar != null) {
            str2 = btqVar.format();
        }
        str2 = null;
        this.f11887e = str2;
        if (field != null) {
            int modifiers = field.getModifiers();
            this.f11889g = method == null || ((modifiers & 1) != 0 && method.getReturnType() == field.getType());
            this.h = (modifiers & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
        } else {
            this.f11889g = false;
            this.h = false;
        }
        int length = str.length();
        char[] cArr = new char[length + 3];
        this.f11885c = cArr;
        str.getChars(0, str.length(), cArr, 1);
        cArr[0] = '\"';
        cArr[length + 1] = '\"';
        cArr[length + 2] = ':';
        if (method != null) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 1) {
                cls2 = parameterTypes[0];
                genericType = (cls2 == Class.class || cls2 == String.class || cls2.isPrimitive()) ? cls2 : method.getGenericParameterTypes()[0];
                this.j = false;
            } else {
                cls2 = method.getReturnType();
                genericType = cls2 == Class.class ? cls2 : method.getGenericReturnType();
                this.j = true;
            }
            method.getDeclaringClass();
        } else {
            Class<?> type3 = field.getType();
            genericType = (type3.isPrimitive() || type3 == String.class || type3.isEnum()) ? type3 : field.getGenericType();
            field.getDeclaringClass();
            this.j = Modifier.isFinal(field.getModifiers());
            cls2 = type3;
        }
        if (cls2 == Object.class && (genericType instanceof TypeVariable)) {
            TypeVariable<?> typeVariable = (TypeVariable) genericType;
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls3 = cls;
            while (true) {
                Type genericSuperclass = cls3.getGenericSuperclass();
                if (genericSuperclass == null) {
                    break;
                }
                if (genericSuperclass instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) genericSuperclass;
                    if (parameterizedType.getRawType() == genericDeclaration) {
                        TypeVariable<?>[] typeParameters = genericDeclaration.getTypeParameters();
                        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                        int i2 = 0;
                        while (true) {
                            if (i2 >= typeParameters.length) {
                                break;
                            }
                            if (typeParameters[i2] == typeVariable) {
                                type2 = actualTypeArguments[i2];
                                break;
                            }
                            i2++;
                        }
                    }
                }
                cls3 = dtu.p(genericSuperclass);
            }
            if (type2 != null) {
                this.f11884b = dtu.p(type2);
                this.f11883a = type2;
                this.f11888f = cls2.isEnum();
                return;
            }
        }
        if (!(genericType instanceof Class)) {
            Type m = m(type == null ? cls : type, cls, genericType);
            if (m != genericType) {
                if (m instanceof ParameterizedType) {
                    cls2 = dtu.p(m);
                } else if (m instanceof Class) {
                    cls2 = dtu.p(m);
                }
            }
            genericType = m;
        }
        this.f11883a = genericType;
        this.f11884b = cls2;
        this.f11888f = !cls2.isArray() && cls2.isEnum();
    }

    public static Type m(Type type, Class cls, Type type2) {
        ParameterizedType parameterizedType;
        TypeVariable[] typeVariableArr;
        if (type != null) {
            if (type2 instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type2).getGenericComponentType();
                Type m = m(type, cls, genericComponentType);
                return genericComponentType != m ? Array.newInstance((Class<?>) dtu.p(m), 0).getClass() : type2;
            }
            if (dtu.k(type)) {
                if (type2 instanceof TypeVariable) {
                    ParameterizedType parameterizedType2 = (ParameterizedType) dtu.o(type);
                    Class p = dtu.p(parameterizedType2);
                    TypeVariable typeVariable = (TypeVariable) type2;
                    for (int i = 0; i < p.getTypeParameters().length; i++) {
                        if (p.getTypeParameters()[i].getName().equals(typeVariable.getName())) {
                            return parameterizedType2.getActualTypeArguments()[i];
                        }
                    }
                }
                if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType3 = (ParameterizedType) type2;
                    Type[] actualTypeArguments = parameterizedType3.getActualTypeArguments();
                    Type[] typeArr = null;
                    if (type instanceof ParameterizedType) {
                        parameterizedType = (ParameterizedType) type;
                        typeVariableArr = cls.getTypeParameters();
                    } else if (cls.getGenericSuperclass() instanceof ParameterizedType) {
                        parameterizedType = (ParameterizedType) cls.getGenericSuperclass();
                        typeVariableArr = cls.getSuperclass().getTypeParameters();
                    } else {
                        parameterizedType = null;
                        typeVariableArr = null;
                    }
                    boolean z = false;
                    for (int i2 = 0; i2 < actualTypeArguments.length && parameterizedType != null; i2++) {
                        Type type3 = actualTypeArguments[i2];
                        if (type3 instanceof TypeVariable) {
                            TypeVariable typeVariable2 = (TypeVariable) type3;
                            for (int i3 = 0; i3 < typeVariableArr.length; i3++) {
                                if (typeVariableArr[i3].getName().equals(typeVariable2.getName())) {
                                    if (typeArr == null) {
                                        typeArr = parameterizedType.getActualTypeArguments();
                                    }
                                    actualTypeArguments[i2] = typeArr[i3];
                                    z = true;
                                }
                            }
                        }
                    }
                    if (z) {
                        return new cnn(actualTypeArguments, parameterizedType3.getOwnerType(), parameterizedType3.getRawType());
                    }
                }
            }
        }
        return type2;
    }

    @Override // java.lang.Comparable
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final int compareTo(bnu bnuVar) {
        int i = bnuVar.l;
        int i2 = this.l;
        if (i2 < i) {
            return -1;
        }
        if (i2 > i) {
            return 1;
        }
        return this.i.compareTo(bnuVar.i);
    }

    public final String toString() {
        return this.i;
    }
}
