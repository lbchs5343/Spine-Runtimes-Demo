package com.ss.android.download.api.model;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.View;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    public String f9109d;
    public Context dq;
    public InterfaceC0211d ia;
    public boolean iw;
    public View kk;
    public Drawable mn;
    public int o;
    public String ox;
    public String p;
    public String s;

    /* renamed from: com.ss.android.download.api.model.d$d, reason: collision with other inner class name */
    public interface InterfaceC0211d {
        void d(DialogInterface dialogInterface);

        void dq(DialogInterface dialogInterface);

        void ox(DialogInterface dialogInterface);
    }

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        public int f9110d;
        public View dq;
        private boolean ia;
        private String iw;
        private Drawable kk;
        private String mn;
        private InterfaceC0211d o;
        private Context ox;
        private String p;
        private String s;

        public dq(Context context) {
            this.ox = context;
        }

        public dq d(String str) {
            this.s = str;
            return this;
        }

        public dq dq(int i) {
            this.f9110d = i;
            return this;
        }

        public dq dq(Drawable drawable) {
            this.kk = drawable;
            return this;
        }

        public dq dq(InterfaceC0211d interfaceC0211d) {
            this.o = interfaceC0211d;
            return this;
        }

        public dq dq(String str) {
            this.p = str;
            return this;
        }

        public dq dq(boolean z) {
            this.ia = z;
            return this;
        }

        public d dq() {
            return new d(this);
        }

        public dq ox(String str) {
            this.iw = str;
            return this;
        }

        public dq p(String str) {
            this.mn = str;
            return this;
        }
    }

    private d(dq dqVar) {
        this.iw = true;
        this.dq = dqVar.ox;
        this.f9109d = dqVar.p;
        this.ox = dqVar.s;
        this.p = dqVar.iw;
        this.s = dqVar.mn;
        this.iw = dqVar.ia;
        this.mn = dqVar.kk;
        this.ia = dqVar.o;
        this.kk = dqVar.dq;
        this.o = dqVar.f9110d;
    }
}
