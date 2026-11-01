package com.ss.android.socialbase.appdownloader.view;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.ss.android.socialbase.appdownloader.kk;
import com.ss.android.socialbase.appdownloader.ox.ig;
import com.ss.android.socialbase.appdownloader.ox.no;
import com.ss.android.socialbase.appdownloader.ox.ox;
import com.ss.android.socialbase.appdownloader.p;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.kk.iw;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public class DownloadTaskDeleteActivity extends Activity {

    /* renamed from: d, reason: collision with root package name */
    private Intent f9306d;
    private no dq;

    private void d() {
        Intent intent;
        if (this.dq != null || (intent = this.f9306d) == null) {
            return;
        }
        try {
            final boolean z = false;
            final int intExtra = intent.getIntExtra("extra_click_download_ids", 0);
            final DownloadInfo downloadInfo = Downloader.getInstance(getApplicationContext()).getDownloadInfo(intExtra);
            if (downloadInfo == null) {
                return;
            }
            String title = downloadInfo.getTitle();
            if (TextUtils.isEmpty(title)) {
                return;
            }
            String format = String.format(getString(kk.dq(this, "tt_appdownloader_notification_download_delete")), title);
            ox dq = p.o().dq();
            ig dq2 = dq != null ? dq.dq(this) : null;
            if (dq2 == null) {
                dq2 = new com.ss.android.socialbase.appdownloader.p.dq(this);
            }
            int dq3 = kk.dq(this, "tt_appdownloader_tip");
            int dq4 = kk.dq(this, "tt_appdownloader_label_ok");
            int dq5 = kk.dq(this, "tt_appdownloader_label_cancel");
            if (com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("cancel_with_net_opt", 0) == 1 && iw.ia() && downloadInfo.getCurBytes() != downloadInfo.getTotalBytes()) {
                z = true;
            }
            if (z) {
                dq4 = kk.dq(this, "tt_appdownloader_label_reserve_wifi");
                dq5 = kk.dq(this, "tt_appdownloader_label_cancel_directly");
                format = getResources().getString(kk.dq(this, "tt_appdownloader_resume_in_wifi"));
            }
            dq2.dq(dq3).dq(format).dq(dq4, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (z) {
                        downloadInfo.setOnlyWifi(true);
                        Downloader.getInstance(DownloadTaskDeleteActivity.this).pause(downloadInfo.getId());
                        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Downloader.getInstance(DownloadTaskDeleteActivity.this).resume(downloadInfo.getId());
                            }
                        }, 100L);
                    } else {
                        DownloadTaskDeleteActivity.this.dq(downloadInfo, intExtra);
                    }
                    DownloadTaskDeleteActivity.this.finish();
                }
            }).d(dq5, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (z) {
                        DownloadTaskDeleteActivity.this.dq(downloadInfo, intExtra);
                    }
                    DownloadTaskDeleteActivity.this.finish();
                }
            }).dq(new DialogInterface.OnCancelListener() { // from class: com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    DownloadTaskDeleteActivity.this.finish();
                }
            });
            this.dq = dq2.dq();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void dq() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        window.setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(DownloadInfo downloadInfo, int i) {
        com.ss.android.socialbase.appdownloader.ox.p d2 = p.o().d();
        if (d2 != null) {
            d2.dq(downloadInfo);
        }
        kx downloadNotificationEventListener = Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).getDownloadNotificationEventListener(i);
        if (downloadNotificationEventListener != null) {
            downloadNotificationEventListener.dq(10, downloadInfo, "", "");
        }
        if (com.ss.android.socialbase.downloader.downloader.ox.ob() != null) {
            Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).cancel(i);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        dq();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f9306d = getIntent();
        d();
        no noVar = this.dq;
        if (noVar != null && !noVar.d()) {
            this.dq.dq();
        } else if (this.dq == null) {
            finish();
        }
    }
}
