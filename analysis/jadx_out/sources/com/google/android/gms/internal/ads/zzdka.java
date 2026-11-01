package com.google.android.gms.internal.ads;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class zzdka implements GestureDetector.OnGestureListener {

    /* renamed from: a, reason: collision with root package name */
    public final zzdit f6121a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdju f6122b;

    public zzdka(zzdit zzditVar, zzdju zzdjuVar) {
        this.f6121a = zzditVar;
        this.f6122b = zzdjuVar;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0070 A[Catch: all -> 0x002b, TRY_LEAVE, TryCatch #0 {all -> 0x002b, blocks: (B:3:0x0001, B:9:0x0008, B:13:0x001c, B:14:0x0068, B:16:0x0070, B:22:0x0031, B:26:0x0046, B:29:0x005a), top: B:2:0x0001 }] */
    @Override // android.view.GestureDetector.OnGestureListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        int y;
        try {
            if (this.f6121a != null) {
                int i = -1;
                if (Math.abs(f2) > Math.abs(f3)) {
                    if (f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        y = (int) (((motionEvent2.getX() - motionEvent.getX()) / f2) * 1000.0f);
                        i = 1;
                    } else {
                        if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            y = (int) (((motionEvent2.getX() - motionEvent.getX()) / f2) * 1000.0f);
                            i = 2;
                        }
                        y = 0;
                    }
                    if (i == this.f6121a.zza()) {
                        this.f6121a.zzE(this.f6122b.zzr(), y);
                        return false;
                    }
                } else {
                    if (f3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        y = (int) (((motionEvent2.getY() - motionEvent.getY()) / f3) * 1000.0f);
                        i = 8;
                    } else {
                        if (f3 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            y = (int) (((motionEvent2.getY() - motionEvent.getY()) / f3) * 1000.0f);
                            i = 4;
                        }
                        y = 0;
                    }
                    if (i == this.f6121a.zza()) {
                    }
                }
            }
            return false;
        } finally {
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final synchronized boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }
}
