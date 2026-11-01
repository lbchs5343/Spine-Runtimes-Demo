package com.bytedance.sdk.openadsdk.mediation.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class d extends com.bytedance.sdk.openadsdk.r.dq.dq.dq.dq {
    private TTAdNative.DrawFeedAdListener dq;

    public d(TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        super(drawFeedAdListener);
        this.dq = drawFeedAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.dq.dq.dq, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i != 172102) {
            return (T) super.call(i, valueSet, cls);
        }
        List list = (List) valueSet.objectValue(0, List.class);
        if (list == null) {
            list = new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new no((Bridge) it.next()));
        }
        TTAdNative.DrawFeedAdListener drawFeedAdListener = this.dq;
        if (drawFeedAdListener == null) {
            return null;
        }
        drawFeedAdListener.onDrawFeedAdLoad(arrayList);
        return null;
    }
}
