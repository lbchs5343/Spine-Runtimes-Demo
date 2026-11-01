package com.bytedance.msdk.dq.s;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import java.lang.ref.SoftReference;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes.dex */
public class d extends com.bytedance.sdk.component.o.p.d<String, Void, Bitmap> {

    /* renamed from: d, reason: collision with root package name */
    private SoftReference<ImageView> f1078d;

    public d(ImageView imageView) {
        this.f1078d = new SoftReference<>(imageView);
    }

    @Override // android.os.AsyncTask
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public Bitmap doInBackground(String... strArr) {
        String str = strArr[0];
        if (str == null) {
            return null;
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                return BitmapFactory.decodeStream(httpURLConnection.getInputStream());
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Bitmap bitmap) {
        super.onPostExecute(bitmap);
        if (bitmap == null) {
            ox.dq("download Image", "Error download Image fail...");
        } else if (this.f1078d.get() != null) {
            this.f1078d.get().setImageBitmap(bitmap);
        }
    }
}
