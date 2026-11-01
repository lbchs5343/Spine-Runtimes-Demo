package com.bytedance.sdk.openadsdk.r.dq.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.f.dq.dq.o;
import g.hat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private final TTAdNative.DrawFeedAdListener f3864d;
    private ValueSet dq = hat.f19147b;

    public dq(TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        this.f3864d = drawFeedAdListener;
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
        if (this.f3864d != null) {
            switch (i) {
                case 172101:
                    this.f3864d.onError(valueSet.intValue(0), (String) valueSet.objectValue(1, String.class));
                    break;
                case 172102:
                    List list = (List) valueSet.objectValue(0, List.class);
                    if (list == null) {
                        list = new ArrayList(0);
                    }
                    ArrayList arrayList = new ArrayList();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new o((Bridge) it.next()));
                    }
                    this.f3864d.onDrawFeedAdLoad(arrayList);
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
