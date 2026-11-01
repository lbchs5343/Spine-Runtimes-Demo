package com.bykv.vk.openvk.component.video.dq.s;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import java.util.HashMap;

/* loaded from: classes.dex */
public class d {

    /* renamed from: com.bykv.vk.openvk.component.video.dq.s.d$d, reason: collision with other inner class name */
    public interface InterfaceC0011d {
        void dq(Bitmap bitmap);
    }

    public static class dq extends com.bytedance.sdk.component.o.p.d<String, Integer, Bitmap> {

        /* renamed from: d, reason: collision with root package name */
        private InterfaceC0011d f576d;
        private long ox;

        public dq(InterfaceC0011d interfaceC0011d, long j) {
            this.f576d = interfaceC0011d;
            this.ox = j;
        }

        @Override // android.os.AsyncTask
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public Bitmap doInBackground(String... strArr) {
            Bitmap bitmap = null;
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                String str = strArr[0];
                if (str.startsWith("http")) {
                    mediaMetadataRetriever.setDataSource(str, new HashMap());
                } else {
                    mediaMetadataRetriever.setDataSource(str);
                }
                bitmap = mediaMetadataRetriever.getFrameAtTime(this.ox * 1000, 3);
                mediaMetadataRetriever.release();
                return bitmap;
            } catch (Throwable th) {
                com.bykv.vk.openvk.component.video.api.iw.ox.d("MediaUtils", "MediaUtils doInBackground : ", th);
                return bitmap;
            }
        }

        @Override // android.os.AsyncTask
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            InterfaceC0011d interfaceC0011d = this.f576d;
            if (interfaceC0011d != null) {
                interfaceC0011d.dq(bitmap);
            }
        }
    }

    public static void dq(long j, String str, InterfaceC0011d interfaceC0011d) {
        new dq(interfaceC0011d, j).dq((Object[]) new String[]{str});
    }
}
