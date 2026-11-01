package com.google.android.gms.ads.internal.client;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzbpg;
import g.ddk;
import g.gpo;
import pkg.a.ModuleDescriptor;

/* loaded from: classes3.dex */
public class LiteSdkInfo extends ddk {
    public LiteSdkInfo(Context context) {
        super("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    @Override // g.gis
    public zzbpg getAdapterCreator() {
        return new zzbpc();
    }

    @Override // g.gis
    public gpo getLiteSdkVersion() {
        return new gpo(ModuleDescriptor.MODULE_VERSION, 243799000, "23.5.0");
    }
}
