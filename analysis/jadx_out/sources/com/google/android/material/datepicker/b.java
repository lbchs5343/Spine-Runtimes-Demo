package com.google.android.material.datepicker;

import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.p;
import cn.trinea.android.developertools.R;
import g.goi;
import g.hej;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class b extends p {
    public final MaterialCalendarGridView ak;
    public final TextView al;

    public b(LinearLayout linearLayout, boolean z) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.al = textView;
        WeakHashMap weakHashMap = goi.f18490c;
        new hej(R.id.tag_accessibility_heading, Boolean.class, 0, 28, 3).f(textView, Boolean.TRUE);
        this.ak = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z) {
            return;
        }
        textView.setVisibility(8);
    }
}
