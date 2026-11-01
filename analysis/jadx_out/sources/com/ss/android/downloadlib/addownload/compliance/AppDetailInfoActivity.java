package com.ss.android.downloadlib.addownload.compliance;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m;
import com.bytedance.sdk.openadsdk.adhost.R;
import java.util.List;

/* loaded from: classes.dex */
public class AppDetailInfoActivity extends Activity {

    /* renamed from: d, reason: collision with root package name */
    private TextView f9126d;
    private ImageView dq;
    private long iw;
    private List<Pair<String, String>> mn;
    private LinearLayout ox;
    private RecyclerView p;
    private long s;

    public class dq extends m {
        private dq() {
        }
    }

    private void d() {
        this.dq = (ImageView) findViewById(R.id.iv_detail_back);
        this.f9126d = (TextView) findViewById(R.id.tv_empty);
        this.p = (RecyclerView) findViewById(R.id.permission_list);
        this.ox = (LinearLayout) findViewById(R.id.ll_download);
        if (this.mn.isEmpty()) {
            this.p.setVisibility(8);
            this.f9126d.setVisibility(0);
        } else {
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
            linearLayoutManager.co(1);
            this.p.setLayoutManager(linearLayoutManager);
            this.p.setAdapter(new dq());
        }
        this.dq.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.AppDetailInfoActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                mn.dq("lp_app_detail_click_close", AppDetailInfoActivity.this.iw);
                AppDetailInfoActivity.this.finish();
            }
        });
        this.ox.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.AppDetailInfoActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                mn.dq("lp_app_detail_click_download", AppDetailInfoActivity.this.iw);
                d.dq().d(AppDetailInfoActivity.this.iw);
                com.ss.android.socialbase.appdownloader.ox.dq((Activity) AppDetailInfoActivity.this);
                com.ss.android.socialbase.appdownloader.ox.dq(d.dq().d());
            }
        });
    }

    public static void dq(Activity activity, long j) {
        Intent intent = new Intent(activity, (Class<?>) AppDetailInfoActivity.class);
        intent.putExtra("app_info_id", j);
        activity.startActivity(intent);
    }

    private boolean dq() {
        this.s = getIntent().getLongExtra("app_info_id", 0L);
        com.ss.android.downloadlib.addownload.d.d dq2 = ox.dq().dq(this.s);
        if (dq2 == null) {
            return false;
        }
        this.iw = dq2.f9143d;
        this.mn = dq2.ia;
        return true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        mn.dq("lp_app_detail_click_close", this.iw);
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.ttdownloader_activity_app_detail_info);
        if (dq()) {
            d();
        } else {
            com.ss.android.socialbase.appdownloader.ox.dq((Activity) this);
        }
    }
}
