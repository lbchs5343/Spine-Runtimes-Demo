package com.bytedance.sdk.component.adexpress.dynamic.animation.dq;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class ox {
    private static volatile ox dq;

    private ox() {
    }

    public static ox dq() {
        if (dq == null) {
            synchronized (ox.class) {
                try {
                    if (dq == null) {
                        dq = new ox();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public p dq(View view, com.bytedance.sdk.component.adexpress.dynamic.ox.dq dqVar) {
        if (dqVar == null) {
            return null;
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).setClipChildren(false);
        }
        if (view.getParent().getParent() != null) {
            ((ViewGroup) view.getParent().getParent()).setClipChildren(false);
        }
        if ("scale".equals(dqVar.kk())) {
            return new no(view, dqVar);
        }
        if ("translate".equals(dqVar.kk())) {
            return new jy(view, dqVar);
        }
        if ("ripple".equals(dqVar.kk())) {
            return new ia(view, dqVar);
        }
        if ("marquee".equals(dqVar.kk())) {
            return new mn(view, dqVar);
        }
        if ("waggle".equals(dqVar.kk())) {
            return new f(view, dqVar);
        }
        if ("shine".equals(dqVar.kk())) {
            return new ig(view, dqVar);
        }
        if ("swing".equals(dqVar.kk())) {
            return new q(view, dqVar);
        }
        if ("fade".equals(dqVar.kk())) {
            return new dq(view, dqVar);
        }
        if ("rubIn".equals(dqVar.kk())) {
            return new o(view, dqVar);
        }
        if ("rotate".equals(dqVar.kk())) {
            return new kk(view, dqVar);
        }
        if ("cutIn".equals(dqVar.kk())) {
            return new iw(view, dqVar);
        }
        if ("stretch".equals(dqVar.kk())) {
            return new mp(view, dqVar);
        }
        if ("bounce".equals(dqVar.kk())) {
            return new s(view, dqVar);
        }
        return null;
    }
}
