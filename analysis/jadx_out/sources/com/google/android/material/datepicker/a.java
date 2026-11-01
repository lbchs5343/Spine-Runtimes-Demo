package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;
import g.ahj;
import g.ebb;
import g.fc;

/* loaded from: classes3.dex */
public final class a implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendarGridView f9039a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f9040b;

    public a(c cVar, MaterialCalendarGridView materialCalendarGridView) {
        this.f9040b = cVar;
        this.f9039a = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        MaterialCalendarGridView materialCalendarGridView = this.f9039a;
        ahj b2 = materialCalendarGridView.b();
        if (i < b2.f() || i > b2.h()) {
            return;
        }
        fc fcVar = this.f9040b.f9044d;
        if (((ebb) fcVar.f16548e).j.getDateValidator().isValid(materialCalendarGridView.b().getItem(i).longValue())) {
            throw null;
        }
    }
}
