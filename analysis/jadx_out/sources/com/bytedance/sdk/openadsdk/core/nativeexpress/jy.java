package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public class jy {

    /* renamed from: d, reason: collision with root package name */
    private float f3238d;
    private View dq;
    private float ia;
    private float kk;
    private float no;
    private float o;
    private float ox;
    private float p = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    private float s = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    private float iw = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    private float mn = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    private boolean ig = false;
    private boolean mp = false;
    private boolean q = false;
    private boolean jy = false;

    public jy(View view) {
        this.dq = view;
    }

    public boolean d(MotionEvent motionEvent) {
        this.f3238d = ((ViewGroup) this.dq.getParent()).getWidth();
        this.ox = ((ViewGroup) this.dq.getParent()).getHeight();
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2) {
                this.mp = false;
                this.q = false;
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                float f2 = x - this.p;
                float f3 = y - this.s;
                this.ia = this.dq.getLeft() + f2;
                this.kk = this.dq.getTop() + f3;
                this.o = this.dq.getRight() + f2;
                this.no = this.dq.getBottom() + f3;
                if (this.ia < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    this.q = true;
                    this.ia = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    this.o = this.dq.getWidth() + TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                }
                float f4 = this.o;
                float f5 = this.f3238d;
                if (f4 > f5) {
                    this.mp = true;
                    this.o = f5;
                    this.ia = f5 - this.dq.getWidth();
                }
                if (this.kk < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    this.kk = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    this.no = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT + this.dq.getHeight();
                }
                float f6 = this.no;
                float f7 = this.ox;
                if (f6 > f7) {
                    this.no = f7;
                    this.kk = f7 - this.dq.getHeight();
                }
                this.dq.offsetLeftAndRight((int) f2);
                this.dq.offsetTopAndBottom((int) f3);
                if (this.q) {
                    View view = this.dq;
                    view.offsetLeftAndRight(-view.getLeft());
                }
                if (this.mp) {
                    this.dq.offsetLeftAndRight((int) (this.f3238d - r7.getRight()));
                }
            }
        } else {
            if (!this.jy) {
                return false;
            }
            if (((int) motionEvent.getRawX()) > this.f3238d / 2.0f) {
                this.ig = false;
                this.dq.animate().setInterpolator(new DecelerateInterpolator()).setDuration(300L).x(this.f3238d - this.dq.getWidth()).start();
                this.dq.offsetLeftAndRight((int) (this.f3238d - r7.getRight()));
            } else {
                this.ig = true;
                this.dq.animate().setInterpolator(new DecelerateInterpolator()).setDuration(300L).x(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).start();
                View view2 = this.dq;
                view2.offsetLeftAndRight(-view2.getLeft());
            }
            this.dq.invalidate();
        }
        return true;
    }

    public boolean dq(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        if (action == 0) {
            this.p = motionEvent.getX();
            this.s = motionEvent.getY();
            return false;
        }
        if (action != 2) {
            return false;
        }
        this.iw = motionEvent.getX();
        this.mn = motionEvent.getY();
        if (Math.abs(this.iw - this.p) < 5.0f || Math.abs(this.mn - this.s) < 5.0f) {
            this.jy = false;
            return false;
        }
        this.jy = true;
        return true;
    }
}
