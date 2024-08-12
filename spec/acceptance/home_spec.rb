RSpec.describe 'Landing on the website' do
    describe 'redirects to home page' do
        it 'shows home page' do
            visit '/'
            expect(page).to have_current_path('/home')
            expect(page).to have_text('Sigmiano Skibaldo')
        end
    end
end

