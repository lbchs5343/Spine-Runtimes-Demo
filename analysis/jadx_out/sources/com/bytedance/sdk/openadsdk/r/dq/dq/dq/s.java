package com.bytedance.sdk.openadsdk.r.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.f.dq.dq.jy;
import g.hat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class s implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTAdNative.NativeExpressAdListener f3868d;
    private ValueSet dq = hat.f19147b;

    public s(TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        this.f3868d = nativeExpressAdListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
    
        return null;
     */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (this.f3868d != null) {
            switch (i) {
                case 153101:
                    this.f3868d.onError(valueSet.intValue(0), (String) valueSet.objectValue(1, String.class));
                    break;
                case 153102:
                    List list = (List) valueSet.objectValue(0, List.class);
                    if (list == null) {
                        list = new ArrayList(0);
                    }
                    ArrayList arrayList = new ArrayList();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new jy((Bridge) it.next()));
                    }
                    this.f3868d.onNativeExpressAdLoad(arrayList);
                    break;
            }
        } else {
            return null;
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return this.dq;
    }
}
