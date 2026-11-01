package com.bytedance.msdk.s.dq;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes.dex */
public class mn {
    private static final Object ox = new Object();

    /* renamed from: d, reason: collision with root package name */
    private Context f1247d;
    private dq dq;

    public class dq {

        /* renamed from: d, reason: collision with root package name */
        private SQLiteDatabase f1248d = null;

        public dq() {
        }

        private void d() {
            try {
                synchronized (mn.ox) {
                    try {
                        SQLiteDatabase sQLiteDatabase = this.f1248d;
                        if (sQLiteDatabase != null) {
                            if (!sQLiteDatabase.isOpen()) {
                            }
                        }
                        SQLiteDatabase writableDatabase = new ia(mn.this.getContext(), "tt_mediation_open_sdk.db", 4).getWritableDatabase();
                        this.f1248d = writableDatabase;
                        writableDatabase.setLockingEnabled(false);
                    } finally {
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
                ox();
            }
        }

        private boolean ox() {
            SQLiteDatabase sQLiteDatabase = this.f1248d;
            return sQLiteDatabase != null && sQLiteDatabase.isOpen() && sQLiteDatabase.inTransaction();
        }

        public SQLiteDatabase dq() {
            d();
            return this.f1248d;
        }
    }

    public mn(Context context) {
        try {
            this.f1247d = context == null ? com.bytedance.msdk.core.dq.getContext() : context.getApplicationContext();
            if (this.dq == null) {
                this.dq = new dq();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        Context context = this.f1247d;
        return context == null ? com.bytedance.msdk.core.dq.getContext() : context;
    }

    public dq dq() {
        return this.dq;
    }
}
