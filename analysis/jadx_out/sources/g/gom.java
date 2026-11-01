package g;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.net.URI;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public abstract class gom {

    /* renamed from: d, reason: collision with root package name */
    public final bku f18500d;

    /* renamed from: e, reason: collision with root package name */
    public final eyd f18501e;

    /* renamed from: f, reason: collision with root package name */
    public final eya f18502f;

    public gom(bku bkuVar, eyd eydVar, eya eyaVar) {
        this.f18500d = bkuVar;
        this.f18501e = eydVar;
        this.f18502f = eyaVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x08fe  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0902 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static gom g(daw dawVar, Class cls, Method method) {
        Type genericReturnType;
        boolean z;
        boolean z2;
        boolean z3;
        kj kjVar;
        int i;
        int i2;
        kj[] kjVarArr;
        boolean z4;
        int i3;
        String str;
        kj kjVar2;
        kj rkVar;
        dmx dmxVar;
        dmx dmxVar2;
        String str2;
        xc xcVar = new xc(dawVar, cls, method);
        Annotation[] annotationArr = xcVar.f20276g;
        int length = annotationArr.length;
        int i4 = 0;
        int i5 = 0;
        loop0: while (true) {
            String str3 = "HEAD";
            if (i5 >= length) {
                if (xcVar.f20274e == null) {
                    throw aky.w(method, null, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
                }
                if (!xcVar.p) {
                    if (xcVar.z) {
                        throw aky.w(method, null, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                    if (xcVar.u) {
                        throw aky.w(method, null, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                }
                Annotation[][] annotationArr2 = xcVar.i;
                int length2 = annotationArr2.length;
                xcVar.m = new kj[length2];
                int i6 = length2 - 1;
                int i7 = 0;
                while (i7 < length2) {
                    kj[] kjVarArr2 = xcVar.m;
                    Type type = xcVar.n[i7];
                    Annotation[] annotationArr3 = annotationArr2[i7];
                    boolean z5 = i7 == i6;
                    if (annotationArr3 != null) {
                        int length3 = annotationArr3.length;
                        kjVar = null;
                        while (i4 < length3) {
                            Annotation annotation = annotationArr3[i4];
                            Annotation[][] annotationArr4 = annotationArr2;
                            int i8 = i4;
                            if (annotation instanceof auy) {
                                xcVar.ac(i7, type);
                                if (xcVar.f20275f) {
                                    throw aky.am(method, i7, "Multiple @Url method annotations found.", new Object[0]);
                                }
                                if (xcVar.t) {
                                    throw aky.am(method, i7, "@Path parameters may not be used with @Url.", new Object[0]);
                                }
                                if (xcVar.f20273d) {
                                    throw aky.am(method, i7, "A @Url parameter must not come after a @Query.", new Object[0]);
                                }
                                if (xcVar.h) {
                                    throw aky.am(method, i7, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                                }
                                if (xcVar.q) {
                                    throw aky.am(method, i7, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                                }
                                if (xcVar.o != null) {
                                    throw aky.am(method, i7, "@Url cannot be used with @%s URL", xcVar.f20274e);
                                }
                                xcVar.f20275f = true;
                                if (type != eyn.class && type != String.class && type != URI.class && (!(type instanceof Class) || !"android.net.Uri".equals(((Class) type).getName()))) {
                                    throw aky.am(method, i7, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                                }
                                kjVar2 = new lf(method, i7, 1);
                                i = length2;
                            } else {
                                i = length2;
                                boolean z6 = annotation instanceof dfd;
                                daw dawVar2 = xcVar.j;
                                if (z6) {
                                    xcVar.ac(i7, type);
                                    if (xcVar.f20273d) {
                                        throw aky.am(method, i7, "A @Path parameter must not come after a @Query.", new Object[0]);
                                    }
                                    if (xcVar.h) {
                                        throw aky.am(method, i7, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                                    }
                                    if (xcVar.q) {
                                        throw aky.am(method, i7, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                                    }
                                    if (xcVar.f20275f) {
                                        throw aky.am(method, i7, "@Path parameters may not be used with @Url.", new Object[0]);
                                    }
                                    if (xcVar.o == null) {
                                        throw aky.am(method, i7, "@Path can only be used with relative url on @%s", xcVar.f20274e);
                                    }
                                    xcVar.t = true;
                                    dfd dfdVar = (dfd) annotation;
                                    String value = dfdVar.value();
                                    if (!xc.f20270a.matcher(value).matches()) {
                                        throw aky.am(method, i7, "@Path parameter name must match %s. Found: %s", xc.f20271b.pattern(), value);
                                    }
                                    if (!xcVar.l.contains(value)) {
                                        throw aky.am(method, i7, "URL \"%s\" does not contain \"{%s}\".", xcVar.o, value);
                                    }
                                    dawVar2.u(type, annotationArr3);
                                    kjVar2 = new avf(xcVar.w, i7, value, dfdVar.encoded());
                                } else {
                                    i2 = i6;
                                    kjVarArr = kjVarArr2;
                                    if (annotation instanceof deo) {
                                        xcVar.ac(i7, type);
                                        deo deoVar = (deo) annotation;
                                        String value2 = deoVar.value();
                                        boolean encoded = deoVar.encoded();
                                        z4 = z5;
                                        Class af = aky.af(type);
                                        i3 = length3;
                                        xcVar.f20273d = true;
                                        if (Iterable.class.isAssignableFrom(af)) {
                                            if (!(type instanceof ParameterizedType)) {
                                                throw aky.am(method, i7, af.getSimpleName() + " must include generic type (e.g., " + af.getSimpleName() + "<String>)", new Object[0]);
                                            }
                                            dawVar2.u(aky.aa(0, (ParameterizedType) type), annotationArr3);
                                            dmxVar2 = new dmx(new ss(value2, encoded, 2), 0);
                                        } else if (af.isArray()) {
                                            dawVar2.u(xc.aa(af.getComponentType()), annotationArr3);
                                            dmxVar2 = new dmx(new ss(value2, encoded, 2), 1);
                                        } else {
                                            dawVar2.u(type, annotationArr3);
                                            kjVar2 = new ss(value2, encoded, 2);
                                            str = str3;
                                        }
                                        kjVar2 = dmxVar2;
                                        str = str3;
                                    } else {
                                        z4 = z5;
                                        i3 = length3;
                                        if (annotation instanceof xv) {
                                            xcVar.ac(i7, type);
                                            boolean encoded2 = ((xv) annotation).encoded();
                                            Class af2 = aky.af(type);
                                            xcVar.h = true;
                                            if (Iterable.class.isAssignableFrom(af2)) {
                                                if (!(type instanceof ParameterizedType)) {
                                                    throw aky.am(method, i7, af2.getSimpleName() + " must include generic type (e.g., " + af2.getSimpleName() + "<String>)", new Object[0]);
                                                }
                                                dawVar2.u(aky.aa(0, (ParameterizedType) type), annotationArr3);
                                                dmxVar2 = new dmx(new cu(encoded2), 0);
                                            } else if (af2.isArray()) {
                                                dawVar2.u(xc.aa(af2.getComponentType()), annotationArr3);
                                                dmxVar2 = new dmx(new cu(encoded2), 1);
                                            } else {
                                                dawVar2.u(type, annotationArr3);
                                                kjVar2 = new cu(encoded2);
                                            }
                                            kjVar2 = dmxVar2;
                                        } else if (annotation instanceof fez) {
                                            xcVar.ac(i7, type);
                                            Class af3 = aky.af(type);
                                            xcVar.q = true;
                                            if (!Map.class.isAssignableFrom(af3)) {
                                                throw aky.am(method, i7, "@QueryMap parameter type must be Map.", new Object[0]);
                                            }
                                            Type ao = aky.ao(type, af3);
                                            if (!(ao instanceof ParameterizedType)) {
                                                throw aky.am(method, i7, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                            }
                                            ParameterizedType parameterizedType = (ParameterizedType) ao;
                                            Type aa = aky.aa(0, parameterizedType);
                                            if (String.class != aa) {
                                                throw aky.am(method, i7, "@QueryMap keys must be of type String: " + aa, new Object[0]);
                                            }
                                            dawVar2.u(aky.aa(1, parameterizedType), annotationArr3);
                                            kjVar2 = new ecg(method, i7, ((fez) annotation).encoded(), 2);
                                        } else {
                                            str = str3;
                                            if (annotation instanceof dgt) {
                                                xcVar.ac(i7, type);
                                                dgt dgtVar = (dgt) annotation;
                                                String value3 = dgtVar.value();
                                                Class af4 = aky.af(type);
                                                if (Iterable.class.isAssignableFrom(af4)) {
                                                    if (!(type instanceof ParameterizedType)) {
                                                        throw aky.am(method, i7, af4.getSimpleName() + " must include generic type (e.g., " + af4.getSimpleName() + "<String>)", new Object[0]);
                                                    }
                                                    dawVar2.u(aky.aa(0, (ParameterizedType) type), annotationArr3);
                                                    rkVar = new dmx(new ss(value3, dgtVar.allowUnsafeNonAsciiValues(), 1), 0);
                                                } else if (af4.isArray()) {
                                                    dawVar2.u(xc.aa(af4.getComponentType()), annotationArr3);
                                                    rkVar = new dmx(new ss(value3, dgtVar.allowUnsafeNonAsciiValues(), 1), 1);
                                                } else {
                                                    dawVar2.u(type, annotationArr3);
                                                    kjVar2 = new ss(value3, dgtVar.allowUnsafeNonAsciiValues(), 1);
                                                }
                                                kjVar2 = rkVar;
                                            } else if (annotation instanceof pl) {
                                                if (type == dvq.class) {
                                                    kjVar2 = new lf(method, i7, 0);
                                                } else {
                                                    xcVar.ac(i7, type);
                                                    Class af5 = aky.af(type);
                                                    if (!Map.class.isAssignableFrom(af5)) {
                                                        throw aky.am(method, i7, "@HeaderMap parameter type must be Map or Headers.", new Object[0]);
                                                    }
                                                    Type ao2 = aky.ao(type, af5);
                                                    if (!(ao2 instanceof ParameterizedType)) {
                                                        throw aky.am(method, i7, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                                    }
                                                    ParameterizedType parameterizedType2 = (ParameterizedType) ao2;
                                                    Type aa2 = aky.aa(0, parameterizedType2);
                                                    if (String.class != aa2) {
                                                        throw aky.am(method, i7, "@HeaderMap keys must be of type String: " + aa2, new Object[0]);
                                                    }
                                                    dawVar2.u(aky.aa(1, parameterizedType2), annotationArr3);
                                                    kjVar2 = new ecg(method, i7, ((pl) annotation).allowUnsafeNonAsciiValues(), 1);
                                                }
                                            } else if (annotation instanceof fho) {
                                                xcVar.ac(i7, type);
                                                if (!xcVar.u) {
                                                    throw aky.am(method, i7, "@Field parameters can only be used with form encoding.", new Object[0]);
                                                }
                                                fho fhoVar = (fho) annotation;
                                                String value4 = fhoVar.value();
                                                boolean encoded3 = fhoVar.encoded();
                                                xcVar.y = true;
                                                Class af6 = aky.af(type);
                                                if (Iterable.class.isAssignableFrom(af6)) {
                                                    if (!(type instanceof ParameterizedType)) {
                                                        throw aky.am(method, i7, af6.getSimpleName() + " must include generic type (e.g., " + af6.getSimpleName() + "<String>)", new Object[0]);
                                                    }
                                                    dawVar2.u(aky.aa(0, (ParameterizedType) type), annotationArr3);
                                                    rkVar = new dmx(new ss(value4, encoded3, 0), 0);
                                                } else if (af6.isArray()) {
                                                    dawVar2.u(xc.aa(af6.getComponentType()), annotationArr3);
                                                    rkVar = new dmx(new ss(value4, encoded3, 0), 1);
                                                } else {
                                                    dawVar2.u(type, annotationArr3);
                                                    kjVar2 = new ss(value4, encoded3, 0);
                                                }
                                                kjVar2 = rkVar;
                                            } else if (annotation instanceof gn) {
                                                xcVar.ac(i7, type);
                                                if (!xcVar.u) {
                                                    throw aky.am(method, i7, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                                                }
                                                Class af7 = aky.af(type);
                                                if (!Map.class.isAssignableFrom(af7)) {
                                                    throw aky.am(method, i7, "@FieldMap parameter type must be Map.", new Object[0]);
                                                }
                                                Type ao3 = aky.ao(type, af7);
                                                if (!(ao3 instanceof ParameterizedType)) {
                                                    throw aky.am(method, i7, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                                }
                                                ParameterizedType parameterizedType3 = (ParameterizedType) ao3;
                                                Type aa3 = aky.aa(0, parameterizedType3);
                                                if (String.class != aa3) {
                                                    throw aky.am(method, i7, "@FieldMap keys must be of type String: " + aa3, new Object[0]);
                                                }
                                                dawVar2.u(aky.aa(1, parameterizedType3), annotationArr3);
                                                xcVar.y = true;
                                                kjVar2 = new ecg(method, i7, ((gn) annotation).encoded(), 0);
                                            } else if (annotation instanceof eht) {
                                                xcVar.ac(i7, type);
                                                if (!xcVar.z) {
                                                    throw aky.am(method, i7, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                                                }
                                                eht ehtVar = (eht) annotation;
                                                xcVar.f20272c = true;
                                                String value5 = ehtVar.value();
                                                Class af8 = aky.af(type);
                                                if (value5.isEmpty()) {
                                                    boolean isAssignableFrom = Iterable.class.isAssignableFrom(af8);
                                                    bvq bvqVar = bvq.f12279a;
                                                    if (isAssignableFrom) {
                                                        if (!(type instanceof ParameterizedType)) {
                                                            throw aky.am(method, i7, af8.getSimpleName() + " must include generic type (e.g., " + af8.getSimpleName() + "<String>)", new Object[0]);
                                                        }
                                                        if (!bmb.class.isAssignableFrom(aky.af(aky.aa(0, (ParameterizedType) type)))) {
                                                            throw aky.am(method, i7, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                        }
                                                        kjVar2 = new dmx(bvqVar, 0);
                                                    } else if (af8.isArray()) {
                                                        if (!bmb.class.isAssignableFrom(af8.getComponentType())) {
                                                            throw aky.am(method, i7, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                        }
                                                        kjVar2 = new dmx(bvqVar, 1);
                                                    } else {
                                                        if (!bmb.class.isAssignableFrom(af8)) {
                                                            throw aky.am(method, i7, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                                                        }
                                                        kjVar2 = bvqVar;
                                                    }
                                                } else {
                                                    dvq aj = dyd.aj("Content-Disposition", tn.ad("form-data; name=\"", value5, "\""), "Content-Transfer-Encoding", ehtVar.encoding());
                                                    if (Iterable.class.isAssignableFrom(af8)) {
                                                        if (!(type instanceof ParameterizedType)) {
                                                            throw aky.am(method, i7, af8.getSimpleName() + " must include generic type (e.g., " + af8.getSimpleName() + "<String>)", new Object[0]);
                                                        }
                                                        Type aa4 = aky.aa(0, (ParameterizedType) type);
                                                        if (bmb.class.isAssignableFrom(aky.af(aa4))) {
                                                            throw aky.am(method, i7, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                        }
                                                        dmxVar = new dmx(new rk(method, i7, aj, dawVar2.w(aa4, annotationArr3, annotationArr)), 0);
                                                    } else if (af8.isArray()) {
                                                        Class aa5 = xc.aa(af8.getComponentType());
                                                        if (bmb.class.isAssignableFrom(aa5)) {
                                                            throw aky.am(method, i7, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                        }
                                                        dmxVar = new dmx(new rk(method, i7, aj, dawVar2.w(aa5, annotationArr3, annotationArr)), 1);
                                                    } else {
                                                        if (bmb.class.isAssignableFrom(af8)) {
                                                            throw aky.am(method, i7, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                                                        }
                                                        rkVar = new rk(method, i7, aj, dawVar2.w(type, annotationArr3, annotationArr));
                                                        kjVar2 = rkVar;
                                                    }
                                                    kjVar2 = dmxVar;
                                                }
                                            } else if (annotation instanceof qr) {
                                                xcVar.ac(i7, type);
                                                if (!xcVar.z) {
                                                    throw aky.am(method, i7, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                                                }
                                                xcVar.f20272c = true;
                                                Class af9 = aky.af(type);
                                                if (!Map.class.isAssignableFrom(af9)) {
                                                    throw aky.am(method, i7, "@PartMap parameter type must be Map.", new Object[0]);
                                                }
                                                Type ao4 = aky.ao(type, af9);
                                                if (!(ao4 instanceof ParameterizedType)) {
                                                    throw aky.am(method, i7, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                                                }
                                                ParameterizedType parameterizedType4 = (ParameterizedType) ao4;
                                                Type aa6 = aky.aa(0, parameterizedType4);
                                                if (String.class != aa6) {
                                                    throw aky.am(method, i7, "@PartMap keys must be of type String: " + aa6, new Object[0]);
                                                }
                                                Type aa7 = aky.aa(1, parameterizedType4);
                                                if (bmb.class.isAssignableFrom(aky.af(aa7))) {
                                                    throw aky.am(method, i7, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                                                }
                                                kjVar2 = new rk(method, i7, dawVar2.w(aa7, annotationArr3, annotationArr), ((qr) annotation).encoding());
                                            } else if (annotation instanceof bnt) {
                                                xcVar.ac(i7, type);
                                                if (xcVar.u || xcVar.z) {
                                                    throw aky.am(method, i7, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                                                }
                                                if (xcVar.r) {
                                                    throw aky.am(method, i7, "Multiple @Body method annotations found.", new Object[0]);
                                                }
                                                try {
                                                    eya w = dawVar2.w(type, annotationArr3, annotationArr);
                                                    xcVar.r = true;
                                                    kjVar2 = new ckt(method, i7, w);
                                                } catch (RuntimeException e2) {
                                                    throw aky.k(method, e2, i7, "Unable to create @Body converter for %s", type);
                                                }
                                            } else if (annotation instanceof arv) {
                                                xcVar.ac(i7, type);
                                                Class aa8 = xc.aa(aky.af(type));
                                                for (int i9 = i7 - 1; i9 >= 0; i9--) {
                                                    kj kjVar3 = xcVar.m[i9];
                                                    if ((kjVar3 instanceof ftu) && ((ftu) kjVar3).f17410a.equals(aa8)) {
                                                        throw aky.am(method, i7, "@Tag type " + aa8.getName() + " is duplicate of " + bfh.f11445b.f(method, i9) + " and would always overwrite its value.", new Object[0]);
                                                    }
                                                }
                                                kjVar2 = new ftu(aa8);
                                            } else {
                                                kjVar2 = null;
                                            }
                                        }
                                        str = str3;
                                    }
                                    if (kjVar2 != null) {
                                        if (kjVar != null) {
                                            throw aky.am(method, i7, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                                        }
                                        kjVar = kjVar2;
                                    }
                                    i4 = i8 + 1;
                                    annotationArr2 = annotationArr4;
                                    length2 = i;
                                    z5 = z4;
                                    str3 = str;
                                    i6 = i2;
                                    kjVarArr2 = kjVarArr;
                                    length3 = i3;
                                }
                            }
                            str = str3;
                            i2 = i6;
                            kjVarArr = kjVarArr2;
                            z4 = z5;
                            i3 = length3;
                            if (kjVar2 != null) {
                            }
                            i4 = i8 + 1;
                            annotationArr2 = annotationArr4;
                            length2 = i;
                            z5 = z4;
                            str3 = str;
                            i6 = i2;
                            kjVarArr2 = kjVarArr;
                            length3 = i3;
                        }
                    } else {
                        kjVar = null;
                    }
                    Annotation[][] annotationArr5 = annotationArr2;
                    int i10 = length2;
                    String str4 = str3;
                    int i11 = i6;
                    kj[] kjVarArr3 = kjVarArr2;
                    boolean z7 = z5;
                    if (kjVar == null) {
                        if (z7) {
                            try {
                                if (aky.af(type) == bdp.class) {
                                    xcVar.x = true;
                                    kjVar = null;
                                }
                            } catch (NoClassDefFoundError unused) {
                            }
                        }
                        throw aky.am(method, i7, "No Retrofit annotation found.", new Object[0]);
                    }
                    kjVarArr3[i7] = kjVar;
                    i7++;
                    annotationArr2 = annotationArr5;
                    length2 = i10;
                    str3 = str4;
                    i6 = i11;
                    i4 = 0;
                }
                String str5 = str3;
                if (xcVar.o == null && !xcVar.f20275f) {
                    throw aky.w(method, null, "Missing either @%s URL or @Url parameter.", xcVar.f20274e);
                }
                boolean z8 = xcVar.u;
                if (!z8 && !xcVar.z && !xcVar.p && xcVar.r) {
                    throw aky.w(method, null, "Non-body HTTP method cannot contain @Body.", new Object[0]);
                }
                if (z8 && !xcVar.y) {
                    throw aky.w(method, null, "Form-encoded method must contain at least one @Field.", new Object[0]);
                }
                if (xcVar.z && !xcVar.f20272c) {
                    throw aky.w(method, null, "Multipart method must contain at least one @Part.", new Object[0]);
                }
                bku bkuVar = new bku(xcVar);
                Type genericReturnType2 = method.getGenericReturnType();
                if (aky.ah(genericReturnType2)) {
                    throw aky.w(method, null, "Method return type must not include a type variable or wildcard: %s", genericReturnType2);
                }
                if (genericReturnType2 == Void.TYPE) {
                    throw aky.w(method, null, "Service methods cannot return void.", new Object[0]);
                }
                Annotation[] annotations = method.getAnnotations();
                boolean z9 = bkuVar.f11763d;
                if (z9) {
                    Type type2 = ((ParameterizedType) method.getGenericParameterTypes()[r6.length - 1]).getActualTypeArguments()[0];
                    if (type2 instanceof WildcardType) {
                        type2 = ((WildcardType) type2).getLowerBounds()[0];
                    }
                    if (aky.af(type2) == anx.class && (type2 instanceof ParameterizedType)) {
                        type2 = aky.aa(0, (ParameterizedType) type2);
                        z2 = true;
                        z3 = false;
                    } else {
                        if (aky.af(type2) == czh.class) {
                            throw aky.w(method, null, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s", aky.aa(0, (ParameterizedType) type2));
                        }
                        z3 = aky.f10421a && type2 == dgi.class;
                        z2 = false;
                    }
                    genericReturnType = new cnn((Type) null, czh.class, new Type[]{type2});
                    if (!aky.r(annotations, brc.class)) {
                        Annotation[] annotationArr6 = new Annotation[annotations.length + 1];
                        annotationArr6[0] = aqy.f10680a;
                        System.arraycopy(annotations, 0, annotationArr6, 1, annotations.length);
                        annotations = annotationArr6;
                    }
                    z = z3;
                } else {
                    genericReturnType = method.getGenericReturnType();
                    z = false;
                    z2 = false;
                }
                try {
                    eeg q = dawVar.q(genericReturnType, annotations);
                    Type b2 = q.b();
                    if (b2 == enb.class) {
                        throw aky.w(method, null, "'" + aky.af(b2).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
                    }
                    if (b2 == anx.class) {
                        throw aky.w(method, null, "Response must include generic type (e.g., Response<String>)", new Object[0]);
                    }
                    if (bkuVar.f11762c.equals(str5) && !Void.class.equals(b2) && (!aky.f10421a || b2 != dgi.class)) {
                        throw aky.w(method, null, "HEAD method must use Void or Unit as response type.", new Object[0]);
                    }
                    try {
                        eya p = dawVar.p(b2, method.getAnnotations());
                        eyd eydVar = (eyd) dawVar.f13887f;
                        return !z9 ? new exm(bkuVar, eydVar, p, q, 0) : z2 ? new exm(bkuVar, eydVar, p, q, 1) : new bwq(bkuVar, eydVar, p, q, z);
                    } catch (RuntimeException e3) {
                        throw aky.w(method, e3, "Unable to create converter for %s", b2);
                    }
                } catch (RuntimeException e4) {
                    throw aky.w(method, e4, "Unable to create call adapter for %s", genericReturnType);
                }
            }
            Annotation annotation2 = annotationArr[i5];
            if (annotation2 instanceof emm) {
                xcVar.ab("DELETE", ((emm) annotation2).value(), false);
            } else if (annotation2 instanceof hby) {
                xcVar.ab("GET", ((hby) annotation2).value(), false);
            } else if (annotation2 instanceof exd) {
                xcVar.ab("HEAD", ((exd) annotation2).value(), false);
            } else if (annotation2 instanceof dqs) {
                xcVar.ab("PATCH", ((dqs) annotation2).value(), true);
            } else if (annotation2 instanceof awh) {
                xcVar.ab("POST", ((awh) annotation2).value(), true);
            } else if (annotation2 instanceof ash) {
                xcVar.ab("PUT", ((ash) annotation2).value(), true);
            } else if (annotation2 instanceof avc) {
                xcVar.ab("OPTIONS", ((avc) annotation2).value(), false);
            } else if (annotation2 instanceof drt) {
                drt drtVar = (drt) annotation2;
                xcVar.ab(drtVar.method(), drtVar.path(), drtVar.hasBody());
            } else if (annotation2 instanceof chu) {
                chu chuVar = (chu) annotation2;
                String[] value6 = chuVar.value();
                if (value6.length == 0) {
                    throw aky.w(method, null, "@Headers annotation is empty.", new Object[0]);
                }
                boolean allowUnsafeNonAsciiValues = chuVar.allowUnsafeNonAsciiValues();
                ais aisVar = new ais(0);
                int length4 = value6.length;
                for (int i12 = 0; i12 < length4; i12++) {
                    str2 = value6[i12];
                    int indexOf = str2.indexOf(58);
                    if (indexOf == -1 || indexOf == 0 || indexOf == str2.length() - 1) {
                        break loop0;
                    }
                    String substring = str2.substring(0, indexOf);
                    String trim = str2.substring(indexOf + 1).trim();
                    if ("Content-Type".equalsIgnoreCase(substring)) {
                        try {
                            Pattern pattern = dpd.f14576a;
                            xcVar.k = acr.bb(trim);
                        } catch (IllegalArgumentException e5) {
                            throw aky.w(method, e5, "Malformed content type: %s", trim);
                        }
                    } else if (allowUnsafeNonAsciiValues) {
                        aisVar.c(substring, trim);
                    } else {
                        aisVar.e(substring, trim);
                    }
                }
                xcVar.v = aisVar.d();
            } else if (annotation2 instanceof axp) {
                if (xcVar.u) {
                    throw aky.w(method, null, "Only one encoding annotation is allowed.", new Object[0]);
                }
                xcVar.z = true;
            } else if (!(annotation2 instanceof fi)) {
                continue;
            } else {
                if (xcVar.z) {
                    throw aky.w(method, null, "Only one encoding annotation is allowed.", new Object[0]);
                }
                xcVar.u = true;
            }
            i5++;
        }
        throw aky.w(method, null, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str2);
    }

    public abstract Object c(fdw fdwVar, Object[] objArr);
}
