package com.bytedance.sdk.component.panglearmor;

import android.content.Context;

/* loaded from: classes.dex */
public class mn {

    /* renamed from: d, reason: collision with root package name */
    private String f2183d;
    private Context dq;
    private String ox;
    private boolean p;
    private ia s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private final String f2184d;
        private final Context dq;
        private final String ox;
        private boolean p = false;
        private ia s = null;

        public dq(Context context, String str, String str2) {
            this.dq = context;
            this.ox = str2;
            this.f2184d = str;
        }

        public dq dq(boolean z) {
            this.p = z;
            return this;
        }

        public mn dq() {
            mn mnVar = new mn();
            mnVar.dq = this.dq;
            mnVar.f2183d = this.f2184d;
            mnVar.ox = this.ox;
            mnVar.s = this.s;
            mnVar.p = this.p;
            return mnVar;
        }

        public void dq(ia iaVar) {
            this.s = iaVar;
        }
    }

    public String d() {
        return this.f2183d;
    }

    public Context dq() {
        return this.dq;
    }

    public boolean ox() {
        return this.p;
    }

    public ia p() {
        return this.s;
    }
}
