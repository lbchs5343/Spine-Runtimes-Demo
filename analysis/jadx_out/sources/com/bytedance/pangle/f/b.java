package com.bytedance.pangle.f;

import com.bytedance.pangle.ZeusPluginInstallListener;
import com.bytedance.pangle.d;

/* loaded from: classes.dex */
public final class b extends d.a {

    /* renamed from: a, reason: collision with root package name */
    private final ZeusPluginInstallListener f1415a;

    public b(ZeusPluginInstallListener zeusPluginInstallListener) {
        this.f1415a = zeusPluginInstallListener;
    }

    @Override // com.bytedance.pangle.d
    public final void a(String str, int i, String str2) {
        ZeusPluginInstallListener zeusPluginInstallListener = this.f1415a;
        if (zeusPluginInstallListener != null) {
            zeusPluginInstallListener.onPluginInstall(str, i, str2);
        }
    }
}
