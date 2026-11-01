package com.bytedance.sdk.component.utils;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public class mn extends TouchDelegate {

    /* renamed from: d, reason: collision with root package name */
    private Rect f2196d;
    private View dq;
    private Rect ox;
    private boolean p;
    private int s;

    public mn(Rect rect, View view) {
        super(rect, view);
        this.f2196d = rect;
        this.s = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        Rect rect2 = new Rect(rect);
        this.ox = rect2;
        int i = this.s;
        rect2.inset(-i, -i);
        this.dq = view;
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z2 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                boolean z3 = this.p;
                if (z3) {
                    z = this.ox.contains(x, y);
                    z2 = z3;
                } else {
                    z2 = z3;
                }
            } else {
                if (action == 3) {
                    boolean z4 = this.p;
                    this.p = false;
                    z2 = z4;
                }
                z = true;
                z2 = false;
            }
            z = true;
        } else if (this.f2196d.contains(x, y)) {
            this.p = true;
            z = true;
        } else {
            this.p = false;
            z = true;
            z2 = false;
        }
        if (z2) {
            View view = this.dq;
            if (z) {
                motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
            } else {
                float f2 = -(this.s * 2);
                motionEvent.setLocation(f2, f2);
            }
            if (view.getVisibility() == 0) {
                return view.dispatchTouchEvent(motionEvent);
            }
        }
        return false;
    }
}
