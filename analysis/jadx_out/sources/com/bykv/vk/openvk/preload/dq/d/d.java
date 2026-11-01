package com.bykv.vk.openvk.preload.dq.d;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;

/* loaded from: classes.dex */
public final class d {
    static final Type[] dq = new Type[0];

    /* renamed from: com.bykv.vk.openvk.preload.dq.d.d$d, reason: collision with other inner class name */
    public static final class C0012d implements Serializable, ParameterizedType {

        /* renamed from: d, reason: collision with root package name */
        private final Type f583d;
        private final Type dq;
        private final Type[] ox;

        public C0012d(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                boolean z = true;
                boolean z2 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
                if (type == null && !z2) {
                    z = false;
                }
                com.bykv.vk.openvk.preload.dq.d.dq.dq(z);
            }
            this.dq = type == null ? null : d.dq(type);
            this.f583d = d.dq(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.ox = typeArr2;
            int length = typeArr2.length;
            for (int i = 0; i < length; i++) {
                com.bykv.vk.openvk.preload.dq.d.dq.dq(this.ox[i]);
                d.s(this.ox[i]);
                Type[] typeArr3 = this.ox;
                typeArr3[i] = d.dq(typeArr3[i]);
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && d.dq(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.ox.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.dq;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f583d;
        }

        public final int hashCode() {
            return (Arrays.hashCode(this.ox) ^ this.f583d.hashCode()) ^ d.dq((Object) this.dq);
        }

        public final String toString() {
            int length = this.ox.length;
            if (length == 0) {
                return d.ox(this.f583d);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(d.ox(this.f583d));
            sb.append("<");
            sb.append(d.ox(this.ox[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(d.ox(this.ox[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    public static final class dq implements Serializable, GenericArrayType {
        private final Type dq;

        public dq(Type type) {
            this.dq = d.dq(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && d.dq(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.dq;
        }

        public final int hashCode() {
            return this.dq.hashCode();
        }

        public final String toString() {
            return d.ox(this.dq) + "[]";
        }
    }

    public static final class ox implements Serializable, WildcardType {

        /* renamed from: d, reason: collision with root package name */
        private final Type f585d;
        private final Type dq;

        public ox(Type[] typeArr, Type[] typeArr2) {
            com.bykv.vk.openvk.preload.dq.d.dq.dq(typeArr2.length <= 1);
            com.bykv.vk.openvk.preload.dq.d.dq.dq(typeArr.length == 1);
            if (typeArr2.length != 1) {
                com.bykv.vk.openvk.preload.dq.d.dq.dq(typeArr[0]);
                d.s(typeArr[0]);
                this.f585d = null;
                this.dq = d.dq(typeArr[0]);
                return;
            }
            com.bykv.vk.openvk.preload.dq.d.dq.dq(typeArr2[0]);
            d.s(typeArr2[0]);
            com.bykv.vk.openvk.preload.dq.d.dq.dq(typeArr[0] == Object.class);
            this.f585d = d.dq(typeArr2[0]);
            this.dq = Object.class;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && d.dq(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f585d;
            return type != null ? new Type[]{type} : d.dq;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.dq};
        }

        public final int hashCode() {
            Type type = this.f585d;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.dq.hashCode() + 31);
        }

        public final String toString() {
            if (this.f585d != null) {
                return "? super " + d.ox(this.f585d);
            }
            if (this.dq == Object.class) {
                return "?";
            }
            return "? extends " + d.ox(this.dq);
        }
    }

    public static Class<?> d(Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                com.bykv.vk.openvk.preload.dq.d.dq.dq(rawType instanceof Class);
                return (Class) rawType;
            }
            if (type instanceof GenericArrayType) {
                return Array.newInstance(d(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
            }
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (!(type instanceof WildcardType)) {
                throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
            }
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        return (Class) type;
    }

    private static Type d(Type type, Class<?> cls, Class<?> cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        com.bykv.vk.openvk.preload.dq.d.dq.dq(cls2.isAssignableFrom(cls));
        return dq(type, cls, dq(type, cls, cls2));
    }

    public static Type[] d(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type d2 = d(type, cls, Map.class);
        return d2 instanceof ParameterizedType ? ((ParameterizedType) d2).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    public static int dq(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public static Type dq(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new dq(dq((Type) cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C0012d(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new dq(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new ox(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static Type dq(Type type, Class<?> cls) {
        Type d2 = d(type, cls, Collection.class);
        if (d2 instanceof WildcardType) {
            d2 = ((WildcardType) d2).getUpperBounds()[0];
        }
        return d2 instanceof ParameterizedType ? ((ParameterizedType) d2).getActualTypeArguments()[0] : Object.class;
    }

    private static Type dq(Type type, Class<?> cls, Class<?> cls2) {
        Class<?> superclass;
        Type genericSuperclass;
        while (cls2 != cls) {
            if (cls2.isInterface()) {
                Class<?>[] interfaces = cls.getInterfaces();
                int length = interfaces.length;
                for (int i = 0; i < length; i++) {
                    Class<?> cls3 = interfaces[i];
                    if (cls3 == cls2) {
                        return cls.getGenericInterfaces()[i];
                    }
                    if (cls2.isAssignableFrom(cls3)) {
                        genericSuperclass = cls.getGenericInterfaces()[i];
                        superclass = interfaces[i];
                        break;
                    }
                }
            }
            if (!cls.isInterface()) {
                while (cls != Object.class) {
                    superclass = cls.getSuperclass();
                    if (superclass == cls2) {
                        return cls.getGenericSuperclass();
                    }
                    if (cls2.isAssignableFrom(superclass)) {
                        genericSuperclass = cls.getGenericSuperclass();
                        Type type2 = genericSuperclass;
                        cls = superclass;
                        type = type2;
                    } else {
                        cls = superclass;
                    }
                }
            }
            return cls2;
        }
        return type;
    }

    public static Type dq(Type type, Class<?> cls, Type type2) {
        return dq(type, cls, type2, new HashSet());
    }

    private static Type dq(Type type, Class<?> cls, Type type2, Collection<TypeVariable> collection) {
        TypeVariable typeVariable;
        do {
            int i = 0;
            if (!(type2 instanceof TypeVariable)) {
                if (type2 instanceof Class) {
                    Class cls2 = (Class) type2;
                    if (cls2.isArray()) {
                        Class<?> componentType = cls2.getComponentType();
                        Type dq2 = dq(type, cls, componentType, collection);
                        return componentType == dq2 ? cls2 : iw(dq2);
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type2;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type dq3 = dq(type, cls, genericComponentType, collection);
                    return genericComponentType == dq3 ? genericArrayType : iw(dq3);
                }
                if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type dq4 = dq(type, cls, ownerType, collection);
                    boolean z = dq4 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length = actualTypeArguments.length;
                    while (i < length) {
                        Type dq5 = dq(type, cls, actualTypeArguments[i], collection);
                        if (dq5 != actualTypeArguments[i]) {
                            if (!z) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z = true;
                            }
                            actualTypeArguments[i] = dq5;
                        }
                        i++;
                    }
                    return z ? new C0012d(dq4, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                }
                boolean z2 = type2 instanceof WildcardType;
                Type type3 = type2;
                if (z2) {
                    WildcardType wildcardType = (WildcardType) type2;
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    Type[] upperBounds = wildcardType.getUpperBounds();
                    if (lowerBounds.length == 1) {
                        Type dq6 = dq(type, cls, lowerBounds[0], collection);
                        type3 = wildcardType;
                        if (dq6 != lowerBounds[0]) {
                            return new ox(new Type[]{Object.class}, dq6 instanceof WildcardType ? ((WildcardType) dq6).getLowerBounds() : new Type[]{dq6});
                        }
                    } else {
                        type3 = wildcardType;
                        if (upperBounds.length == 1) {
                            Type dq7 = dq(type, cls, upperBounds[0], collection);
                            type3 = wildcardType;
                            if (dq7 != upperBounds[0]) {
                                return new ox(dq7 instanceof WildcardType ? ((WildcardType) dq7).getUpperBounds() : new Type[]{dq7}, dq);
                            }
                        }
                    }
                }
                return type3;
            }
            typeVariable = (TypeVariable) type2;
            if (collection.contains(typeVariable)) {
                return type2;
            }
            collection.add(typeVariable);
            GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
            Class cls3 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
            if (cls3 != null) {
                Type dq8 = dq(type, cls, (Class<?>) cls3);
                if (dq8 instanceof ParameterizedType) {
                    TypeVariable[] typeParameters = cls3.getTypeParameters();
                    int length2 = typeParameters.length;
                    while (i < length2) {
                        if (typeVariable.equals(typeParameters[i])) {
                            type2 = ((ParameterizedType) dq8).getActualTypeArguments()[i];
                        } else {
                            i++;
                        }
                    }
                    throw new NoSuchElementException();
                }
            }
            type2 = typeVariable;
        } while (type2 != typeVariable);
        return type2;
    }

    public static boolean dq(Type type, Type type2) {
        while (type != type2) {
            if (type instanceof Class) {
                return type.equals(type2);
            }
            if (type instanceof ParameterizedType) {
                if (!(type2 instanceof ParameterizedType)) {
                    return false;
                }
                ParameterizedType parameterizedType = (ParameterizedType) type;
                ParameterizedType parameterizedType2 = (ParameterizedType) type2;
                Type ownerType = parameterizedType.getOwnerType();
                Type ownerType2 = parameterizedType2.getOwnerType();
                return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
            }
            if (!(type instanceof GenericArrayType)) {
                if (type instanceof WildcardType) {
                    if (!(type2 instanceof WildcardType)) {
                        return false;
                    }
                    WildcardType wildcardType = (WildcardType) type;
                    WildcardType wildcardType2 = (WildcardType) type2;
                    return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
                }
                if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
                    return false;
                }
                TypeVariable typeVariable = (TypeVariable) type;
                TypeVariable typeVariable2 = (TypeVariable) type2;
                return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
            }
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            type = ((GenericArrayType) type).getGenericComponentType();
            type2 = ((GenericArrayType) type2).getGenericComponentType();
        }
        return true;
    }

    private static GenericArrayType iw(Type type) {
        return new dq(type);
    }

    public static String ox(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static Type p(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    public static void s(Type type) {
        com.bykv.vk.openvk.preload.dq.d.dq.dq(((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true);
    }
}
