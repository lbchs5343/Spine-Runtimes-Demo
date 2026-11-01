package com.bytedance.sdk.openadsdk.core.dislike.ui;

import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.f.d.d.iw;
import com.bytedance.sdk.openadsdk.widget.FlowLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class p extends BaseAdapter {

    /* renamed from: d, reason: collision with root package name */
    private final Context f2816d;
    private final List<iw> dq;
    private dq ox;

    public class d {

        /* renamed from: d, reason: collision with root package name */
        FlowLayout f2818d;
        TextView dq;

        private d() {
        }
    }

    public interface dq {
        void dq(int i, iw iwVar);
    }

    public p(Context context, List<iw> list) {
        this.dq = list == null ? new ArrayList(0) : new ArrayList(list);
        this.f2816d = context != null ? context.getApplicationContext() : context;
    }

    private TextView d() {
        TextView textView = new TextView(this.f2816d);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        com.bytedance.sdk.openadsdk.core.dislike.dq.p d2 = com.bytedance.sdk.openadsdk.core.dislike.dq.dq.d();
        marginLayoutParams.setMargins(0, 0, d2.dq(this.f2816d, 8.0f), d2.dq(this.f2816d, 8.0f));
        textView.setLayoutParams(marginLayoutParams);
        int dq2 = d2.dq(this.f2816d, 21.0f);
        int dq3 = d2.dq(this.f2816d, 6.0f);
        textView.setPadding(dq2, dq3, dq2, dq3);
        Drawable dq4 = dq(Color.parseColor("#0A161823"));
        ((GradientDrawable) dq4).setCornerRadius(d2.dq(this.f2816d, 4.0f));
        textView.setBackground(dq4);
        textView.setTextColor(Color.parseColor("#BF161823"));
        textView.setTextSize(14.0f);
        textView.setAlpha(0.75f);
        return textView;
    }

    private Drawable dq(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i);
        return gradientDrawable;
    }

    private StateListDrawable dq() {
        Drawable dq2 = dq(Color.parseColor("#FDE6E6E6"));
        Drawable dq3 = dq(Color.parseColor("#FDFFFFFF"));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, dq2);
        stateListDrawable.addState(new int[0], dq3);
        return stateListDrawable;
    }

    public void dq(dq dqVar) {
        this.ox = dqVar;
    }

    public void dq(List<iw> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.dq.clear();
        this.dq.addAll(list);
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<iw> list = this.dq;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.dq.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        View view2;
        d dVar;
        if (view == null) {
            dVar = new d();
            view2 = com.bytedance.sdk.openadsdk.res.p.d(this.f2816d);
            dVar.dq = (TextView) view2.findViewById(2047279094);
            dVar.f2818d = (FlowLayout) view2.findViewById(2047279093);
            view2.setTag(dVar);
        } else {
            view2 = view;
            dVar = (d) view.getTag();
        }
        iw iwVar = this.dq.get(i);
        dVar.dq.setText(iwVar.d());
        if (!iwVar.iw()) {
            dVar.dq.setBackground(dq());
            dVar.f2818d.setVisibility(8);
            return view2;
        }
        dVar.f2818d.removeAllViews();
        List<iw> p = iwVar.p();
        for (int i2 = 0; i2 < p.size(); i2++) {
            final iw iwVar2 = p.get(i2);
            TextView d2 = d();
            d2.setText(iwVar2.d());
            d2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.p.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    if (p.this.ox != null) {
                        p.this.ox.dq(i, iwVar2);
                    }
                }
            });
            dVar.f2818d.addView(d2);
        }
        dVar.f2818d.setVisibility(0);
        return view2;
    }
}
