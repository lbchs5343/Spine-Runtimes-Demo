package g;

import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zz {

    /* renamed from: c, reason: collision with root package name */
    public static final zz f20421c;

    /* renamed from: d, reason: collision with root package name */
    public static final zz f20422d;
    public static final zz h;
    public static final zz j;
    public static final zz k;
    public static final zz l;
    public static final zz m;
    public static final zz o;
    public static final zz p;
    public static final zz r;
    public final int s;
    public final String t;
    public final tj u;

    /* renamed from: e, reason: collision with root package name */
    public static final HashMap f20423e = new HashMap();
    public static final zz q = v("ConstantValue", new bfb(4));

    /* renamed from: a, reason: collision with root package name */
    public static final zz f20419a = v("Code", new bfb(3));
    public static final zz n = v("LineNumberTable", new kf(24));

    /* renamed from: b, reason: collision with root package name */
    public static final zz f20420b = v("LocalVariableTable", new kf(26));

    /* renamed from: f, reason: collision with root package name */
    public static final zz f20424f = v("LocalVariableTypeTable", new kf(25));

    /* renamed from: g, reason: collision with root package name */
    public static final zz f20425g = v("InnerClasses", new bfb(20));
    public static final zz i = v("BootstrapMethods", new bfb(18));

    static {
        final any anyVar = any.RUNTIME;
        final int i2 = 0;
        l = v("RuntimeVisibleAnnotations", new tj() { // from class: g.aac
            @Override // g.tj
            public final azo c(cmv cmvVar, gqc gqcVar) {
                switch (i2) {
                    case 0:
                        int ai = gqcVar.ai();
                        ArrayList arrayList = new ArrayList(ai);
                        for (int i3 = 0; i3 < ai; i3++) {
                            arrayList.add(cfy.c(anyVar, cmvVar, gqcVar));
                        }
                        return new cfy(arrayList);
                    default:
                        int ap = gqcVar.ap();
                        ArrayList arrayList2 = new ArrayList(ap);
                        for (int i4 = 0; i4 < ap; i4++) {
                            int ai2 = gqcVar.ai();
                            ArrayList arrayList3 = new ArrayList(ai2);
                            for (int i5 = 0; i5 < ai2; i5++) {
                                arrayList3.add(cfy.c(anyVar, cmvVar, gqcVar));
                            }
                            arrayList2.add(arrayList3);
                        }
                        return new vk(arrayList2);
                }
            }
        });
        final any anyVar2 = any.BUILD;
        final int i3 = 0;
        f20422d = v("RuntimeInvisibleAnnotations", new tj() { // from class: g.aac
            @Override // g.tj
            public final azo c(cmv cmvVar, gqc gqcVar) {
                switch (i3) {
                    case 0:
                        int ai = gqcVar.ai();
                        ArrayList arrayList = new ArrayList(ai);
                        for (int i32 = 0; i32 < ai; i32++) {
                            arrayList.add(cfy.c(anyVar2, cmvVar, gqcVar));
                        }
                        return new cfy(arrayList);
                    default:
                        int ap = gqcVar.ap();
                        ArrayList arrayList2 = new ArrayList(ap);
                        for (int i4 = 0; i4 < ap; i4++) {
                            int ai2 = gqcVar.ai();
                            ArrayList arrayList3 = new ArrayList(ai2);
                            for (int i5 = 0; i5 < ai2; i5++) {
                                arrayList3.add(cfy.c(anyVar2, cmvVar, gqcVar));
                            }
                            arrayList2.add(arrayList3);
                        }
                        return new vk(arrayList2);
                }
            }
        });
        final int i4 = 1;
        f20421c = v("RuntimeVisibleParameterAnnotations", new tj() { // from class: g.aac
            @Override // g.tj
            public final azo c(cmv cmvVar, gqc gqcVar) {
                switch (i4) {
                    case 0:
                        int ai = gqcVar.ai();
                        ArrayList arrayList = new ArrayList(ai);
                        for (int i32 = 0; i32 < ai; i32++) {
                            arrayList.add(cfy.c(anyVar, cmvVar, gqcVar));
                        }
                        return new cfy(arrayList);
                    default:
                        int ap = gqcVar.ap();
                        ArrayList arrayList2 = new ArrayList(ap);
                        for (int i42 = 0; i42 < ap; i42++) {
                            int ai2 = gqcVar.ai();
                            ArrayList arrayList3 = new ArrayList(ai2);
                            for (int i5 = 0; i5 < ai2; i5++) {
                                arrayList3.add(cfy.c(anyVar, cmvVar, gqcVar));
                            }
                            arrayList2.add(arrayList3);
                        }
                        return new vk(arrayList2);
                }
            }
        });
        final int i5 = 1;
        k = v("RuntimeInvisibleParameterAnnotations", new tj() { // from class: g.aac
            @Override // g.tj
            public final azo c(cmv cmvVar, gqc gqcVar) {
                switch (i5) {
                    case 0:
                        int ai = gqcVar.ai();
                        ArrayList arrayList = new ArrayList(ai);
                        for (int i32 = 0; i32 < ai; i32++) {
                            arrayList.add(cfy.c(anyVar2, cmvVar, gqcVar));
                        }
                        return new cfy(arrayList);
                    default:
                        int ap = gqcVar.ap();
                        ArrayList arrayList2 = new ArrayList(ap);
                        for (int i42 = 0; i42 < ap; i42++) {
                            int ai2 = gqcVar.ai();
                            ArrayList arrayList3 = new ArrayList(ai2);
                            for (int i52 = 0; i52 < ai2; i52++) {
                                arrayList3.add(cfy.c(anyVar2, cmvVar, gqcVar));
                            }
                            arrayList2.add(arrayList3);
                        }
                        return new vk(arrayList2);
                }
            }
        });
        o = v("AnnotationDefault", new bfb(17));
        r = v("SourceFile", new kf(23));
        j = v("Signature", new kf(22));
        p = v("Exceptions", new bfb(19));
        h = v("MethodParameters", new kf(21));
        m = v("StackMapTable", new bls());
        v("Deprecated", null);
        v("Synthetic", null);
        v("EnclosingMethod", null);
        v("RuntimeVisibleTypeAnnotations", null);
        v("RuntimeInvisibleTypeAnnotations", null);
        v("Module", null);
        v("NestHost", null);
        v("NestMembers", null);
        v("SourceDebugExtension", null);
    }

    public zz(int i2, String str, tj tjVar) {
        this.s = i2;
        this.t = str;
        this.u = tjVar;
    }

    public static zz v(String str, tj tjVar) {
        HashMap hashMap = f20423e;
        zz zzVar = new zz(hashMap.size(), str, tjVar);
        hashMap.put(str, zzVar);
        return zzVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return this.s == ((zz) obj).s;
    }

    public final int hashCode() {
        return this.s;
    }

    public final String toString() {
        return this.t;
    }
}
