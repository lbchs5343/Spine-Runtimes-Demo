package com.bytedance.sdk.component.ox.d.dq.s;

/* loaded from: classes.dex */
public final class ox {
    public final com.bytedance.sdk.component.ox.dq.iw ia;
    final int kk;
    public final com.bytedance.sdk.component.ox.dq.iw mn;
    public static final com.bytedance.sdk.component.ox.dq.iw dq = com.bytedance.sdk.component.ox.dq.iw.dq(":");

    /* renamed from: d, reason: collision with root package name */
    public static final com.bytedance.sdk.component.ox.dq.iw f2100d = com.bytedance.sdk.component.ox.dq.iw.dq(":status");
    public static final com.bytedance.sdk.component.ox.dq.iw ox = com.bytedance.sdk.component.ox.dq.iw.dq(":method");
    public static final com.bytedance.sdk.component.ox.dq.iw p = com.bytedance.sdk.component.ox.dq.iw.dq(":path");
    public static final com.bytedance.sdk.component.ox.dq.iw s = com.bytedance.sdk.component.ox.dq.iw.dq(":scheme");
    public static final com.bytedance.sdk.component.ox.dq.iw iw = com.bytedance.sdk.component.ox.dq.iw.dq(":authority");

    public ox(com.bytedance.sdk.component.ox.dq.iw iwVar, com.bytedance.sdk.component.ox.dq.iw iwVar2) {
        this.mn = iwVar;
        this.ia = iwVar2;
        this.kk = iwVar2.mn() + iwVar.mn() + 32;
    }

    public ox(com.bytedance.sdk.component.ox.dq.iw iwVar, String str) {
        this(iwVar, com.bytedance.sdk.component.ox.dq.iw.dq(str));
    }

    public ox(String str, String str2) {
        this(com.bytedance.sdk.component.ox.dq.iw.dq(str), com.bytedance.sdk.component.ox.dq.iw.dq(str2));
    }

    public boolean equals(Object obj) {
        if (obj instanceof ox) {
            ox oxVar = (ox) obj;
            if (this.mn.equals(oxVar.mn) && this.ia.equals(oxVar.ia)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.ia.hashCode() + ((this.mn.hashCode() + 527) * 31);
    }

    public String toString() {
        return com.bytedance.sdk.component.ox.d.dq.ox.dq("%s: %s", this.mn.dq(), this.ia.dq());
    }
}
