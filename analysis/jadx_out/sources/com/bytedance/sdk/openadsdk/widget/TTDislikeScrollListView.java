package com.bytedance.sdk.openadsdk.widget;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.bytedance.sdk.openadsdk.core.dislike.dq.d;
import com.bytedance.sdk.openadsdk.f.d.d.iw;

/* loaded from: classes3.dex */
public class TTDislikeScrollListView extends ListView {

    /* renamed from: d, reason: collision with root package name */
    private AdapterView.OnItemClickListener f3907d;
    private d dq;
    private AdapterView.OnItemClickListener ox;

    public TTDislikeScrollListView(Context context) {
        super(context);
        this.ox = new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.widget.TTDislikeScrollListView.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (TTDislikeScrollListView.this.getAdapter() == null || TTDislikeScrollListView.this.getAdapter().getItem(i) == null || !(TTDislikeScrollListView.this.getAdapter().getItem(i) instanceof iw)) {
                    throw new IllegalArgumentException("adapter数据异常，必须为FilterWord");
                }
                iw iwVar = (iw) TTDislikeScrollListView.this.getAdapter().getItem(i);
                if (iwVar.iw()) {
                    return;
                }
                if (TTDislikeScrollListView.this.f3907d != null) {
                    TTDislikeScrollListView.this.f3907d.onItemClick(adapterView, view, i, j);
                }
                if (TTDislikeScrollListView.this.dq != null) {
                    TTDislikeScrollListView.this.dq.dq(iwVar);
                }
            }
        };
        dq();
    }

    private void dq() {
        super.setOnItemClickListener(this.ox);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public void setDislikeController(d dVar) {
        this.dq = dVar;
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f3907d = onItemClickListener;
    }
}
