class StatesController < ApplicationController
    def new
        @report = Report.find(params[:report_id])
        @state = State.new
    end
    
    def create
        @report = Report.find(params[:report_id])

        @state = State.new(
            state: state_params[:state],
            user_id: current_user.id,
            report_id: params[:report_id]
        )

        if @state.save
            redirect_to report_path(@state.reports)
        else
            render :new
        end
    end

    private
      def state_params
        params.require(:state).permit(:state, :user_id, :report_id)
      end
end
