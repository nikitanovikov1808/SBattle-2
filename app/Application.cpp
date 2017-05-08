#include "Application.h"

Application::Application(QObject* parent) : QObject(parent)
{
    changeState(MENU);
}

void Application::changeState(const State& state)
{
    disableAllConnectEvent();

    switch(state)
    {
        case MENU:
            this->state = MENU;
            QObject::connect(this, mouseClickEvent, &menuWindow, &MenuWindow::mouseClick);
            break;

        case GAME:
        break;
    }
}

void Application::disableAllConnectEvent()
{
    QObject::disconnect(this, mouseClickEvent, &menuWindow, &MenuWindow::mouseClick);
}

void Application::mouseClick(const int mouseX, const int mouseY)
{
    emit mouseClickEvent(mouseX, mouseY);
}
