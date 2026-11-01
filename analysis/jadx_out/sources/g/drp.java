package g;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.view.View;
import android.view.WindowManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class drp extends ghz {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f14674a;

    /* renamed from: b, reason: collision with root package name */
    public sr f14675b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f14676c;

    /* renamed from: d, reason: collision with root package name */
    public ejn f14677d;

    /* renamed from: e, reason: collision with root package name */
    public zx f14678e;

    /* renamed from: f, reason: collision with root package name */
    public View f14679f;

    /* renamed from: g, reason: collision with root package name */
    public RecyclerView f14680g;
    public drp h;
    public volatile boolean i;
    public WindowManager j;
    public dbv k;

    public final void l() {
        if (this.j != null && this.f14679f != null && this.i) {
            this.j.removeView(this.f14679f);
        }
        synchronized (drp.class) {
            this.i = false;
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f14678e;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.h = this;
        this.f14678e = new zx(this);
        this.j = (WindowManager) getSystemService("window");
        this.f14676c = new ArrayList();
        f14674a = true;
        this.f14675b = new sr(10, this);
        fzn.l(this).v(this.f14675b, new IntentFilter("window_state_changed"));
        erl.ab(this, new dcq(20, this));
    }

    @Override // android.app.Service
    public final void onDestroy() {
        erl.ar(this);
        fzn.l(this).u(this.f14675b);
        f14674a = false;
        l();
        super.onDestroy();
    }
}
