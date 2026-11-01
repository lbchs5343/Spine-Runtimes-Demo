package com.google.android.material.datepicker;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import g.ahj;
import g.fau;
import g.gas;
import g.glf;
import g.goi;

/* loaded from: classes3.dex */
final class MaterialCalendarGridView extends GridView {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f9038a;

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        fau.d(null);
        if (gas.ag(getContext(), R.attr.windowFullscreen)) {
            setNextFocusLeftId(cn.trinea.android.developertools.R.id.cancel_button);
            setNextFocusRightId(cn.trinea.android.developertools.R.id.confirm_button);
        }
        this.f9038a = gas.ag(getContext(), cn.trinea.android.developertools.R.attr.nestedScrollable);
        goi.ab(this, new glf(2));
    }

    public final ahj b() {
        return (ahj) super.getAdapter();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final ListAdapter getAdapter() {
        return (ahj) super.getAdapter();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* renamed from: getAdapter, reason: avoid collision after fix types in other method */
    public final ListAdapter getAdapter2() {
        return (ahj) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((ahj) super.getAdapter()).notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ahj ahjVar = (ahj) super.getAdapter();
        ahjVar.getClass();
        int max = Math.max(ahjVar.f(), getFirstVisiblePosition());
        int min = Math.min(ahjVar.h(), getLastVisiblePosition());
        ahjVar.getItem(max);
        ahjVar.getItem(min);
        throw null;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        if (!z) {
            super.onFocusChanged(false, i, rect);
            return;
        }
        if (i == 33) {
            setSelection(((ahj) super.getAdapter()).h());
        } else if (i == 130) {
            setSelection(((ahj) super.getAdapter()).f());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition == -1 || (selectedItemPosition >= ((ahj) super.getAdapter()).f() && selectedItemPosition <= ((ahj) super.getAdapter()).h())) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(((ahj) super.getAdapter()).f());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i, int i2) {
        if (!this.f9038a) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof ahj)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), ahj.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i) {
        if (i < ((ahj) super.getAdapter()).f()) {
            super.setSelection(((ahj) super.getAdapter()).f());
        } else {
            super.setSelection(i);
        }
    }
}
