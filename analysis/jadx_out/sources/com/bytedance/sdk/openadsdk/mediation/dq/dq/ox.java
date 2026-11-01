package com.bytedance.sdk.openadsdk.mediation.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdNative;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class ox extends com.bytedance.sdk.openadsdk.r.dq.dq.dq.d {
    private TTAdNative.FeedAdListener dq;

    public ox(TTAdNative.FeedAdListener feedAdListener) {
        super(feedAdListener);
        this.dq = feedAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.dq.dq.d, com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i != 164102) {
            return (T) super.call(i, valueSet, cls);
        }
        List list = (List) valueSet.objectValue(0, List.class);
        if (list == null) {
            list = new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new ig((Bridge) it.next()));
        }
        TTAdNative.FeedAdListener feedAdListener = this.dq;
        if (feedAdListener == null) {
            return null;
        }
        feedAdListener.onFeedAdLoad(arrayList);
        return null;
    }
}
