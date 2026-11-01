package com.ss.android.socialbase.appdownloader.s;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.view.KeyEvent;
import com.ss.android.socialbase.appdownloader.kk;
import com.ss.android.socialbase.appdownloader.ox.q;
import g.dyy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private static List<q> f9304d = new ArrayList();
    private static final String dq = "p";
    private static com.ss.android.socialbase.appdownloader.view.dq ox;
    private static AlertDialog p;

    public static void d(Activity activity, q qVar) {
        if (activity != null) {
            try {
                if (!activity.isFinishing()) {
                    FragmentManager fragmentManager = activity.getFragmentManager();
                    String str = dq;
                    com.ss.android.socialbase.appdownloader.view.dq dqVar = (com.ss.android.socialbase.appdownloader.view.dq) fragmentManager.findFragmentByTag(str);
                    ox = dqVar;
                    if (dqVar == null) {
                        ox = new com.ss.android.socialbase.appdownloader.view.dq();
                        fragmentManager.beginTransaction().add(ox, str).commitAllowingStateLoss();
                        try {
                            fragmentManager.executePendingTransactions();
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                    ox.dq();
                    return;
                }
            } catch (Throwable th2) {
                try {
                    th2.printStackTrace();
                    qVar.dq();
                    return;
                } catch (Throwable th3) {
                    th3.printStackTrace();
                    return;
                }
            }
        }
        qVar.dq();
    }

    public static synchronized void dq(final Activity activity, final q qVar) {
        synchronized (p.class) {
            if (qVar == null) {
                return;
            }
            if (activity != null) {
                try {
                    if (!activity.isFinishing()) {
                        int dq2 = kk.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), "tt_appdownloader_notification_request_title");
                        int dq3 = kk.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), "tt_appdownloader_notification_request_message");
                        int dq4 = kk.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), "tt_appdownloader_notification_request_btn_yes");
                        int dq5 = kk.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), "tt_appdownloader_notification_request_btn_no");
                        f9304d.add(qVar);
                        AlertDialog alertDialog = p;
                        if (alertDialog != null) {
                            if (!alertDialog.isShowing()) {
                            }
                            return;
                        }
                        p = new AlertDialog.Builder(activity).setTitle(dq2).setMessage(dq3).setPositiveButton(dq4, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.s.p.3
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                p.d(activity, qVar);
                                dialogInterface.cancel();
                                AlertDialog unused = p.p = null;
                            }
                        }).setNegativeButton(dq5, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.s.p.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                p.dq(false);
                            }
                        }).setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.ss.android.socialbase.appdownloader.s.p.1
                            @Override // android.content.DialogInterface.OnKeyListener
                            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                                if (i != 4) {
                                    return false;
                                }
                                if (keyEvent.getAction() == 1) {
                                    p.dq(false);
                                }
                                return true;
                            }
                        }).setCancelable(false).show();
                        return;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                    dq(false);
                    return;
                }
            }
            qVar.d();
        }
    }

    public static synchronized void dq(boolean z) {
        synchronized (p.class) {
            try {
                AlertDialog alertDialog = p;
                if (alertDialog != null) {
                    alertDialog.cancel();
                    p = null;
                }
                for (q qVar : f9304d) {
                    if (qVar != null) {
                        if (z) {
                            qVar.dq();
                        } else {
                            qVar.d();
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static boolean dq() {
        try {
            return new dyy(com.ss.android.socialbase.downloader.downloader.ox.ob()).h();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }
}
