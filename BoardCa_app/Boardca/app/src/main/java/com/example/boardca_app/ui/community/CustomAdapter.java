package com.example.boardca_app.ui.community;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.example.boardca_app.R;

import java.util.ArrayList;

public class CustomAdapter extends RecyclerView.Adapter<CustomAdapter.CustomViewHolder> {

    private ArrayList<CommunityFragment> arrayList;
    private Context context;

    public CustomAdapter(ArrayList<CommunityFragment> arrayList, Context context) {
        this.arrayList = arrayList;
        this.context = context;
    }

    @NonNull
    @Override
    public CustomAdapter.CustomViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {

        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.comm_list, parent, false);
        CustomViewHolder holder = new CustomViewHolder(view);

        return holder;
    }

    @Override
    public void onBindViewHolder(@NonNull CustomAdapter.CustomViewHolder holder, int position) {

//        Glide.with(holder.itemView)
//                .load(arrayList.get(position).getUsername())
//                .into(holder.comm_pic);
//        holder.comm_writer.setText(arrayList.get(position).getId());

    }

    @Override
    public int getItemCount() {
        return 0;
    }

    public class CustomViewHolder extends RecyclerView.ViewHolder {

        ImageView comm_pic;
        TextView comm_title, comm_reply_count, comm_writer, comm_date_count, comm_hitsnumber;

        public CustomViewHolder(@NonNull View itemView) {
            super(itemView);

//            this.comm_pic = itemView.findViewById(R.id.comm_pic);
//            this.comm_title = itemView.findViewById(R.id.comm_title);
//            this.comm_reply_count = itemView.findViewById(R.id.comm_reply_count);
//            this.comm_writer = itemView.findViewById(R.id.comm_writer);
//            this.comm_date_count = itemView.findViewById(R.id.comm_date_count);
//            this.comm_hitsnumber = itemView.findViewById(R.id.comm_hitsnumber);

        }
    }
}
