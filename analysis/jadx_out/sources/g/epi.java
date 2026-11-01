package g;

import android.content.Intent;
import android.os.IBinder;
import android.view.View;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.Switch;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public abstract class epi extends ghz implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public SeekBar f15934a;

    /* renamed from: b, reason: collision with root package name */
    public float f15935b;

    /* renamed from: c, reason: collision with root package name */
    public View f15936c;

    /* renamed from: d, reason: collision with root package name */
    public float f15937d;

    /* renamed from: e, reason: collision with root package name */
    public EditText f15938e;

    /* renamed from: f, reason: collision with root package name */
    public dk f15939f;

    /* renamed from: g, reason: collision with root package name */
    public float f15940g;
    public Switch h;
    public volatile boolean i;
    public View j;
    public epi k;
    public WindowManager.LayoutParams l;
    public WindowManager m;
    public float n;
    public float o;
    public WindowManager.LayoutParams p;

    public static void q(float f2, float f3) {
        String.format("%.2f", Float.valueOf(f2));
        String.format("%.2f", Float.valueOf(f3));
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f15939f;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        float f2 = this.n;
        int id = view.getId();
        if (id == R.id.up) {
            r(this.f15940g + f2, true);
        } else if (id == R.id.down) {
            r(this.f15940g - f2, true);
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.k = this;
        this.f15939f = new dk(this);
        this.m = (WindowManager) getSystemService("window");
        this.f15940g = getResources().getInteger(R.integer.fm_default_font_size_sp);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        if (this.m != null && this.i) {
            View view = this.f15936c;
            if (view != null) {
                this.m.removeView(view);
            }
            View view2 = this.j;
            if (view2 != null) {
                this.m.removeView(view2);
            }
        }
        synchronized (epi.class) {
            this.i = false;
        }
        super.onDestroy();
    }

    public final void r(float f2, boolean z) {
        float f3 = this.o;
        if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f2 >= f3) {
            return;
        }
        this.f15940g = f2;
        this.h.setText(this.f15940g + " sp");
        this.f15938e.setTextSize(this.f15940g);
        if (z) {
            this.f15934a.setProgress((int) ((this.f15940g * 100.0f) / f3));
        }
    }
}
