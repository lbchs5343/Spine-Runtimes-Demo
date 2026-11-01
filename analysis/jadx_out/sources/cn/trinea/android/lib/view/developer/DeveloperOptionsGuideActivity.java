package cn.trinea.android.lib.view.developer;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Keep;
import cn.trinea.android.developertools.R;
import cn.trinea.android.lib.view.developer.DeveloperOptionsGuideActivity;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.google.android.material.button.MaterialButton;
import g.afo;
import g.byd;
import g.cf;
import g.dms;
import g.dyd;
import g.fnp;
import g.hcj;

@Keep
/* loaded from: classes.dex */
public class DeveloperOptionsGuideActivity extends dms {
    private static final String STATE_WAITING_FOR_ENABLE = "waitingForEnable";
    private cf demo;
    private boolean waitingForEnable;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Runnable checkEnabled = new byd(7, this);

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onCreate$0(View view) {
        view.performHapticFeedback(0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$onCreate$2(View view) {
        if (afo.ak(this) && afo.ao(this, false)) {
            return;
        }
        if (!afo.ak(this)) {
            this.waitingForEnable = true;
            this.handler.removeCallbacks(this.checkEnabled);
            this.handler.postDelayed(this.checkEnabled, 1000L);
        }
        afo.ai(this);
    }

    @Override // g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i = 0;
        final int i2 = 1;
        this.waitingForEnable = bundle == null ? !afo.ak(this) : bundle.getBoolean(STATE_WAITING_FOR_ENABLE);
        setContentView(R.layout.activity_developer_options_guide);
        ((ImageView) findViewById(R.id.guide_app_icon)).setImageDrawable(getApplicationInfo().loadIcon(getPackageManager()));
        String l = fnp.l(this);
        String j = fnp.j(this);
        String[] split = l.split(" -> ", 2);
        int i3 = split.length > 1 ? R.string.dev_guide_step1_with_sub_page : R.string.dev_guide_step1;
        ((TextView) findViewById(R.id.guide_step_title_1)).setText(split.length > 1 ? getString(i3, getString(R.string.dev_guide_go), split[0], split[1]) : getString(i3, getString(R.string.dev_guide_go), split[0]));
        ((TextView) findViewById(R.id.guide_step_title_2)).setText(getString(R.string.dev_guide_step2, j));
        int[] iArr = {R.id.guide_step_1, R.id.guide_step_2};
        for (int i4 = 0; i4 < 2; i4++) {
            View findViewById = findViewById(iArr[i4]);
            dyd.ap(findViewById);
            findViewById.setOnLongClickListener(new hcj());
        }
        this.demo = new cf(findViewById(android.R.id.content));
        dyd.ao(findViewById(android.R.id.content));
        findViewById(R.id.guide_later).setOnClickListener(new View.OnClickListener(this) { // from class: g.ght

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ DeveloperOptionsGuideActivity f18178b;

            {
                this.f18178b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        this.f18178b.lambda$onCreate$1(view);
                        break;
                    default:
                        this.f18178b.lambda$onCreate$2(view);
                        break;
                }
            }
        });
        findViewById(R.id.guide_action).setOnClickListener(new View.OnClickListener(this) { // from class: g.ght

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ DeveloperOptionsGuideActivity f18178b;

            {
                this.f18178b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        this.f18178b.lambda$onCreate$1(view);
                        break;
                    default:
                        this.f18178b.lambda$onCreate$2(view);
                        break;
                }
            }
        });
    }

    @Override // g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public void onDestroy() {
        this.handler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.u, android.app.Activity
    public void onPause() {
        this.demo.n();
        super.onPause();
    }

    @Override // g.dms, androidx.fragment.app.u, android.app.Activity
    public void onResume() {
        super.onResume();
        this.handler.removeCallbacks(this.checkEnabled);
        this.checkEnabled.run();
        if (isFinishing()) {
            return;
        }
        this.demo.m(PushUIConfig.dismissTime);
        boolean ak = afo.ak(this);
        ((TextView) findViewById(R.id.guide_status)).setText(ak ? R.string.dev_guide_enabled : R.string.dev_guide_intro);
        ((MaterialButton) findViewById(R.id.guide_later)).setText(ak ? R.string.dev_guide_back : R.string.dev_guide_later);
        ((MaterialButton) findViewById(R.id.guide_action)).setText(ak ? R.string.dev_guide_open : R.string.dev_guide_go);
    }

    @Override // androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(STATE_WAITING_FOR_ENABLE, this.waitingForEnable);
        super.onSaveInstanceState(bundle);
    }
}
