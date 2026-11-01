package com.ss.android.downloadlib.addownload.compliance;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.adhost.R;
import com.ss.android.downloadlib.addownload.compliance.p;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.guide.install.ClipImageView;
import com.ss.android.downloadlib.mn.mp;

/* loaded from: classes.dex */
public class dq extends Dialog {

    /* renamed from: d, reason: collision with root package name */
    private TextView f9131d;
    private TextView dq;
    private LinearLayout ia;
    private final com.ss.android.downloadlib.addownload.d.d ig;
    private TextView iw;
    private Activity kk;
    private ClipImageView mn;
    private long no;
    private final long o;
    private TextView ox;
    private TextView p;
    private TextView s;

    public dq(Activity activity, long j) {
        super(activity);
        this.kk = activity;
        this.o = j;
        this.ig = ox.dq().get(Long.valueOf(j));
    }

    private void dq() {
        this.dq = (TextView) findViewById(R.id.tv_app_name);
        this.f9131d = (TextView) findViewById(R.id.tv_app_version);
        this.ox = (TextView) findViewById(R.id.tv_app_developer);
        this.p = (TextView) findViewById(R.id.tv_app_detail);
        this.s = (TextView) findViewById(R.id.tv_app_privacy);
        this.iw = (TextView) findViewById(R.id.tv_give_up);
        this.mn = (ClipImageView) findViewById(R.id.iv_app_icon);
        this.ia = (LinearLayout) findViewById(R.id.ll_download);
        this.dq.setText(mp.dq(this.ig.s, "--"));
        this.f9131d.setText("版本号：" + mp.dq(this.ig.iw, "--"));
        this.ox.setText("开发者：" + mp.dq(this.ig.mn, "应用信息正在完善中"));
        this.mn.setRoundRadius(mp.dq(no.getContext(), 8.0f));
        this.mn.setBackgroundColor(Color.parseColor("#EBEBEB"));
        p.dq().dq(this.o, new p.dq() { // from class: com.ss.android.downloadlib.addownload.compliance.dq.2
            @Override // com.ss.android.downloadlib.addownload.compliance.p.dq
            public void dq(Bitmap bitmap) {
                if (bitmap != null) {
                    dq.this.mn.setImageBitmap(bitmap);
                } else {
                    mn.dq(8, dq.this.no);
                }
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.dq.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.dq().dq(dq.this.kk);
                AppDetailInfoActivity.dq(dq.this.kk, dq.this.o);
                mn.dq("lp_app_dialog_click_detail", dq.this.no);
            }
        });
        this.s.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.dq.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.dq().dq(dq.this.kk);
                AppPrivacyPolicyActivity.dq(dq.this.kk, dq.this.o);
                mn.dq("lp_app_dialog_click_privacy", dq.this.no);
            }
        });
        this.iw.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.dq.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dq.this.dismiss();
                mn.dq("lp_app_dialog_click_giveup", dq.this.no);
            }
        });
        this.ia.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.dq.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                mn.dq("lp_app_dialog_click_download", dq.this.no);
                d.dq().d(dq.this.no);
                dq.this.dismiss();
            }
        });
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        com.ss.android.socialbase.appdownloader.ox.dq(this.kk);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.ig == null) {
            dismiss();
            return;
        }
        requestWindowFeature(1);
        setContentView(R.layout.ttdownloader_dialog_appinfo);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(R.drawable.ttdownloader_bg_transparent);
        }
        setCancelable(true);
        setCanceledOnTouchOutside(true);
        this.no = this.ig.f9143d;
        dq();
        mn.d("lp_app_dialog_show", this.no);
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.ss.android.downloadlib.addownload.compliance.dq.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                mn.dq("lp_app_dialog_cancel", dq.this.no);
            }
        });
    }
}
