package g;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class dxy implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public boolean f15051a = false;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue f15052b = new LinkedBlockingQueue();

    public final IBinder c() {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ckd.at("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.f15051a) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.f15051a = true;
        IBinder iBinder = (IBinder) this.f15052b.poll(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, timeUnit);
        if (iBinder != null) {
            return iBinder;
        }
        throw new TimeoutException("Timed out waiting for the service connection");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f15052b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
