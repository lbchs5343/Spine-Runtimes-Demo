package g;

import j$.util.Objects;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class cnn implements ParameterizedType {

    /* renamed from: a, reason: collision with root package name */
    public final Type f13178a;

    /* renamed from: b, reason: collision with root package name */
    public final Type[] f13179b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13180c = 1;

    /* renamed from: d, reason: collision with root package name */
    public final Type f13181d;

    public cnn(Type type, Type type2, Type[] typeArr) {
        if (type2 instanceof Class) {
            if ((type == null) != (((Class) type2).getEnclosingClass() == null)) {
                throw new IllegalArgumentException();
            }
        }
        for (Type type3 : typeArr) {
            Objects.requireNonNull(type3, "typeArgument == null");
            aky.aj(type3);
        }
        this.f13181d = type;
        this.f13178a = type2;
        this.f13179b = (Type[]) typeArr.clone();
    }

    public cnn(Type[] typeArr, Type type, Type type2) {
        this.f13179b = typeArr;
        this.f13181d = type;
        this.f13178a = type2;
    }

    public boolean equals(Object obj) {
        switch (this.f13180c) {
            case 1:
                return (obj instanceof ParameterizedType) && aky.ae(this, (ParameterizedType) obj);
            default:
                return super.equals(obj);
        }
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        switch (this.f13180c) {
            case 0:
                return this.f13179b;
            default:
                return (Type[]) this.f13179b.clone();
        }
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        switch (this.f13180c) {
        }
        return this.f13181d;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        switch (this.f13180c) {
        }
        return this.f13178a;
    }

    public int hashCode() {
        switch (this.f13180c) {
            case 1:
                int hashCode = Arrays.hashCode(this.f13179b) ^ this.f13178a.hashCode();
                Type type = this.f13181d;
                return hashCode ^ (type != null ? type.hashCode() : 0);
            default:
                return super.hashCode();
        }
    }

    public String toString() {
        switch (this.f13180c) {
            case 1:
                Type[] typeArr = this.f13179b;
                int length = typeArr.length;
                Type type = this.f13178a;
                if (length == 0) {
                    return aky.s(type);
                }
                StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
                sb.append(aky.s(type));
                sb.append("<");
                sb.append(aky.s(typeArr[0]));
                for (int i = 1; i < typeArr.length; i++) {
                    sb.append(", ");
                    sb.append(aky.s(typeArr[i]));
                }
                sb.append(">");
                return sb.toString();
            default:
                return super.toString();
        }
    }
}
