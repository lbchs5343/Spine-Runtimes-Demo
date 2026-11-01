package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.m;
import androidx.recyclerview.widget.p;
import cn.trinea.android.developertools.R;
import g.ahj;
import g.cyy;
import g.edj;
import g.fc;
import g.fin;
import g.gas;
import g.yx;

/* loaded from: classes3.dex */
public final class c extends m {

    /* renamed from: a, reason: collision with root package name */
    public final int f9041a;

    /* renamed from: b, reason: collision with root package name */
    public final fin f9042b;

    /* renamed from: c, reason: collision with root package name */
    public final cyy f9043c;

    /* renamed from: d, reason: collision with root package name */
    public final fc f9044d;

    public c(ContextThemeWrapper contextThemeWrapper, fin finVar, cyy cyyVar, fc fcVar) {
        edj start = finVar.getStart();
        edj end = finVar.getEnd();
        edj openAt = finVar.getOpenAt();
        if (start.compareTo(openAt) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (openAt.compareTo(end) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f9041a = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * ahj.f10223a) + (gas.ag(contextThemeWrapper, android.R.attr.windowFullscreen) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f9042b = finVar;
        this.f9043c = cyyVar;
        this.f9044d = fcVar;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.m
    public final int getItemCount() {
        return this.f9042b.getMonthSpan();
    }

    @Override // androidx.recyclerview.widget.m
    public final long getItemId(int i) {
        return this.f9042b.getStart().monthsLater(i).getStableId();
    }

    @Override // androidx.recyclerview.widget.m
    public final void onBindViewHolder(p pVar, int i) {
        b bVar = (b) pVar;
        fin finVar = this.f9042b;
        edj monthsLater = finVar.getStart().monthsLater(i);
        bVar.al.setText(monthsLater.getLongName());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.ak.findViewById(R.id.month_grid);
        if (materialCalendarGridView.b() == null || !monthsLater.equals(materialCalendarGridView.b().f10225c)) {
            new ahj(monthsLater, finVar, this.f9043c);
            throw null;
        }
        materialCalendarGridView.invalidate();
        materialCalendarGridView.b().getClass();
        throw null;
    }

    @Override // androidx.recyclerview.widget.m
    public final p onCreateViewHolder(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!gas.ag(viewGroup.getContext(), android.R.attr.windowFullscreen)) {
            return new b(linearLayout, false);
        }
        linearLayout.setLayoutParams(new yx(-1, this.f9041a));
        return new b(linearLayout, true);
    }
}
