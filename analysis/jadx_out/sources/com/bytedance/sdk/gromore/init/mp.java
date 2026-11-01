package com.bytedance.sdk.gromore.init;

import android.content.Context;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.Manager;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* loaded from: classes.dex */
public class mp implements Manager {

    /* renamed from: d, reason: collision with root package name */
    private p f2367d = new p();
    private Manager dq;

    public mp(Manager manager) {
        this.dq = manager;
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Loader createLoader(Context context) {
        Manager manager = this.dq;
        if (manager != null) {
            return new mn(context, manager.createLoader(context));
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public Bridge getBridge(int i) {
        if (i == 8303) {
            com.bytedance.msdk.dq.s.ox.d("TMe", "initRequestCondition getBridge");
            return this.f2367d;
        }
        Manager manager = this.dq;
        if (manager != null) {
            return new ia(manager.getBridge(i));
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Manager
    public ValueSet values() {
        Manager manager = this.dq;
        if (manager != null) {
            return manager.values();
        }
        return null;
    }
}
