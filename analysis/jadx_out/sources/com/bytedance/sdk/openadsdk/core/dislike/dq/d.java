package com.bytedance.sdk.openadsdk.core.dislike.dq;

import android.app.Dialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.f.d.d.iw;

/* loaded from: classes3.dex */
public class d {
    private final com.bytedance.sdk.openadsdk.core.dislike.ox.d dq;

    public static final class dq implements AdapterView.OnItemClickListener, EventListener {
        private final d dq;

        private dq(d dVar) {
            this.dq = dVar;
        }

        @Override // com.bykv.vk.openvk.api.proto.EventListener
        public ValueSet onEvent(int i, Result result) {
            if (result == null || result.values() == null) {
                return null;
            }
            this.dq.dq(new com.bytedance.sdk.openadsdk.core.dislike.ox.ox(result.values().stringValue(0), result.values().stringValue(1)));
            return null;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        }
    }

    public d(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar) {
        this.dq = dVar;
    }

    public static final void dq(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar, Dialog dialog, int[] iArr) {
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        d dVar2 = new d(dVar);
        for (int i : iArr) {
            View findViewById = dialog.findViewById(i);
            if (findViewById instanceof ListView) {
                ((ListView) findViewById).setOnItemClickListener(new dq());
            }
        }
    }

    public void dq(iw iwVar) {
        if (this.dq == null || iwVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.dislike.dq.dq.dq().dq(this.dq, iwVar);
    }
}
