package com.bytedance.sdk.component.ox.d;

import g.he;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class p {
    private final boolean ia;
    private final int ig;
    private final int iw;
    private final boolean jy;
    private final boolean kk;
    private final int mn;
    private final boolean mp;
    private final int no;
    private final boolean o;
    String ox;
    private final boolean p;
    private final boolean q;
    private final boolean s;
    public static final p dq = new dq().dq().ox();

    /* renamed from: d, reason: collision with root package name */
    public static final p f2144d = new dq().d().dq(he.UNDEFINED_ITEM_ID, TimeUnit.SECONDS).ox();

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        boolean f2145d;
        boolean dq;
        boolean ia;
        boolean iw;
        boolean mn;
        int ox = -1;
        int p = -1;
        int s = -1;

        public dq d() {
            this.iw = true;
            return this;
        }

        public dq dq() {
            this.dq = true;
            return this;
        }

        public dq dq(int i, TimeUnit timeUnit) {
            if (i < 0) {
                throw new IllegalArgumentException("maxStale < 0: ".concat(String.valueOf(i)));
            }
            long seconds = timeUnit.toSeconds(i);
            this.p = seconds > 2147483647L ? he.UNDEFINED_ITEM_ID : (int) seconds;
            return this;
        }

        public p ox() {
            return new p(this);
        }
    }

    public p(dq dqVar) {
        this.p = dqVar.dq;
        this.s = dqVar.f2145d;
        this.iw = dqVar.ox;
        this.mn = -1;
        this.ia = false;
        this.kk = false;
        this.o = false;
        this.no = dqVar.p;
        this.ig = dqVar.s;
        this.mp = dqVar.iw;
        this.q = dqVar.mn;
        this.jy = dqVar.ia;
    }

    private p(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.p = z;
        this.s = z2;
        this.iw = i;
        this.mn = i2;
        this.ia = z3;
        this.kk = z4;
        this.o = z5;
        this.no = i3;
        this.ig = i4;
        this.mp = z6;
        this.q = z7;
        this.jy = z8;
        this.ox = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static p dq(cd cdVar) {
        int i;
        int i2;
        String str;
        cd cdVar2 = cdVar;
        int dq2 = cdVar2.dq();
        int i3 = 0;
        boolean z = true;
        String str2 = null;
        boolean z2 = false;
        boolean z3 = false;
        int i4 = -1;
        int i5 = -1;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        int i6 = -1;
        int i7 = -1;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        while (i3 < dq2) {
            String dq3 = cdVar2.dq(i3);
            String d2 = cdVar2.d(i3);
            if (dq3.equalsIgnoreCase("Cache-Control")) {
                if (str2 == null) {
                    str2 = d2;
                    for (i = 0; i < d2.length(); i = i2) {
                        int dq4 = com.bytedance.sdk.component.ox.d.dq.ox.s.dq(d2, i, "=,;");
                        String trim = d2.substring(i, dq4).trim();
                        if (dq4 == d2.length() || d2.charAt(dq4) == ',' || d2.charAt(dq4) == ';') {
                            i2 = dq4 + 1;
                            str = null;
                        } else {
                            int dq5 = com.bytedance.sdk.component.ox.d.dq.ox.s.dq(d2, dq4 + 1);
                            if (dq5 >= d2.length() || d2.charAt(dq5) != '\"') {
                                i2 = com.bytedance.sdk.component.ox.d.dq.ox.s.dq(d2, dq5, ",;");
                                str = d2.substring(dq5, i2).trim();
                            } else {
                                int i8 = dq5 + 1;
                                int dq6 = com.bytedance.sdk.component.ox.d.dq.ox.s.dq(d2, i8, "\"");
                                str = d2.substring(i8, dq6);
                                i2 = dq6 + 1;
                            }
                        }
                        if ("no-cache".equalsIgnoreCase(trim)) {
                            z2 = true;
                        } else if ("no-store".equalsIgnoreCase(trim)) {
                            z3 = true;
                        } else if ("max-age".equalsIgnoreCase(trim)) {
                            i4 = com.bytedance.sdk.component.ox.d.dq.ox.s.d(str, -1);
                        } else if ("s-maxage".equalsIgnoreCase(trim)) {
                            i5 = com.bytedance.sdk.component.ox.d.dq.ox.s.d(str, -1);
                        } else if ("private".equalsIgnoreCase(trim)) {
                            z4 = true;
                        } else if ("public".equalsIgnoreCase(trim)) {
                            z5 = true;
                        } else if ("must-revalidate".equalsIgnoreCase(trim)) {
                            z6 = true;
                        } else if ("max-stale".equalsIgnoreCase(trim)) {
                            i6 = com.bytedance.sdk.component.ox.d.dq.ox.s.d(str, he.UNDEFINED_ITEM_ID);
                        } else if ("min-fresh".equalsIgnoreCase(trim)) {
                            i7 = com.bytedance.sdk.component.ox.d.dq.ox.s.d(str, -1);
                        } else if ("only-if-cached".equalsIgnoreCase(trim)) {
                            z7 = true;
                        } else if ("no-transform".equalsIgnoreCase(trim)) {
                            z8 = true;
                        } else if ("immutable".equalsIgnoreCase(trim)) {
                            z9 = true;
                        }
                    }
                    i3++;
                    cdVar2 = cdVar;
                }
            } else if (!dq3.equalsIgnoreCase("Pragma")) {
                i3++;
                cdVar2 = cdVar;
            }
            z = false;
            while (i < d2.length()) {
            }
            i3++;
            cdVar2 = cdVar;
        }
        return new p(z2, z3, i4, i5, z4, z5, z6, i6, i7, z7, z8, z9, !z ? null : str2);
    }

    private String no() {
        StringBuilder sb = new StringBuilder();
        if (this.p) {
            sb.append("no-cache, ");
        }
        if (this.s) {
            sb.append("no-store, ");
        }
        if (this.iw != -1) {
            sb.append("max-age=");
            sb.append(this.iw);
            sb.append(", ");
        }
        if (this.mn != -1) {
            sb.append("s-maxage=");
            sb.append(this.mn);
            sb.append(", ");
        }
        if (this.ia) {
            sb.append("private, ");
        }
        if (this.kk) {
            sb.append("public, ");
        }
        if (this.o) {
            sb.append("must-revalidate, ");
        }
        if (this.no != -1) {
            sb.append("max-stale=");
            sb.append(this.no);
            sb.append(", ");
        }
        if (this.ig != -1) {
            sb.append("min-fresh=");
            sb.append(this.ig);
            sb.append(", ");
        }
        if (this.mp) {
            sb.append("only-if-cached, ");
        }
        if (this.q) {
            sb.append("no-transform, ");
        }
        if (this.jy) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }

    public boolean d() {
        return this.s;
    }

    public boolean dq() {
        return this.p;
    }

    public int ia() {
        return this.ig;
    }

    public boolean iw() {
        return this.o;
    }

    public boolean kk() {
        return this.mp;
    }

    public int mn() {
        return this.no;
    }

    public boolean o() {
        return this.jy;
    }

    public int ox() {
        return this.iw;
    }

    public boolean p() {
        return this.ia;
    }

    public boolean s() {
        return this.kk;
    }

    public String toString() {
        String str = this.ox;
        if (str != null) {
            return str;
        }
        String no = no();
        this.ox = no;
        return no;
    }
}
