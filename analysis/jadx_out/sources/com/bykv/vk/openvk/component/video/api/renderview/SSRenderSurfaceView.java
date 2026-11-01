package com.bykv.vk.openvk.component.video.api.renderview;

import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.component.video.api.renderview.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class SSRenderSurfaceView extends SSSurfaceView implements SurfaceHolder.Callback, d {
    private static final ArrayList<ox> ox = new ArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    private ox f519d;
    private WeakReference<dq> dq;
    private d.dq p;

    @Override // com.bykv.vk.openvk.component.video.api.renderview.d
    public void dq(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i2;
        layoutParams.width = i;
        setLayoutParams(layoutParams);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.d
    public void dq(dq dqVar) {
        this.dq = new WeakReference<>(dqVar);
        SurfaceHolder holder = getHolder();
        holder.setFormat(-3);
        Iterator<ox> it = ox.iterator();
        while (it.hasNext()) {
            ox next = it.next();
            if (next != null && next.dq() == null) {
                holder.removeCallback(next);
                it.remove();
            }
        }
        holder.addCallback(this.f519d);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.d
    public View getView() {
        return this;
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    public void setWindowVisibilityChangedListener(d.dq dqVar) {
        this.p = dqVar;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_SurfaceView", "surfaceChanged: ");
        WeakReference<dq> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().dq(surfaceHolder, i, i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        WeakReference<dq> weakReference = this.dq;
        if (weakReference != null && weakReference.get() != null) {
            this.dq.get().dq(surfaceHolder);
        }
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_SurfaceView", "surfaceCreated: ");
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO_SurfaceView", "surfaceDestroyed: ");
        WeakReference<dq> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().d(surfaceHolder);
    }
}
